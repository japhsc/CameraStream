// Board Type: NodeMCU 0.9
/* firmware to control a DC motor over DMX
 * it is used to turns the dial of a clock
 *  
 * set the WiFi credential in the wifi_essid and wifi_password
 * the board will endlessly try to connect to this network (and reboot after several retries)
 * once on this network, it will listen to DMX512 packet over the sACN network
 * the universe it listens too is configured in UNIVERSE_START 
 * the channels it retrieve data from it configured in CHANNEL_START
 * 3 channels are used.
 * - the first channel set the direction (0-127 forward, 128-255 reverse)
 * - the second channel is the coarse speed
 * - the third channel is the fine speed
 * 
 * development board used: ESP8266-based module (add to additionnal board manager URLs in file->preferences https://arduino.esp8266.com/stable/package_esp8266com_index.json)
 * board: ESP8266 Boards (2.5.2) -> Generic ESP8266 Module
 * CPU frequency: 80 MHz
 * crystal frequency: 26 MHz
 * flash size: 4M (no SPIFFS) (no file system is used, all is hard coded, 512K is also suffisent)
 * 
 * source code for Arduino IDE (1.8.13)
 * plugins used:
 * - WifiManager (0.16.0) https://github.com/tzapu/WiFiManager
 * - ESP Async E1.31 (1.0.0) https://github.com/forkineye/ESPAsyncE131
 */
#include <ESP8266WiFi.h> // library to connect to WiFi
#include <ESPAsyncE131.h> // library to receive E1.31 DMX data

// WiFi settings
#include "wifi_credentials.h"
//const char* wifi_essid = "ESSID"; // ESSID of WiFi to connect to
//const char* wifi_password = "password"; // password of WiFi to connect to
WiFiClient wifi_client; // to connect to WiFi

// motor control
#define MOTOR_FAULT_PIN D4 // input to signal fault from motor driver
#define MOTOR_SLEEP_PIN D2 // pin to put the DRV8833 into sleep mode, active low (D2 = GPIO4)
#define MOTOR_CLW_PIN D0 // pin to turn digits clockwise (D0 = GPIO16)
#define MOTOR_CCLW_PIN D1 // pin to turn digits counter-clockwise (D1 = GPIO5)

// E1.31 control
#define UNIVERSE_START 5U // first DMX universe to listen for
#define UNIVERSE_COUNT 1U // number of universes to listen for, starting at UNIVERSE_START
ESPAsyncE131 e131(UNIVERSE_COUNT); // initialise E1.31 library
#define CHANNEL_START 6U // first DMX channel to read motor values from
unsigned long last_packet_time = 0; // last time we received a packet, in ms


void setup() {

  // configure debug
  Serial.begin(115200); // enable serial output for debug
  Serial.println(); // ensure we start at the beginning of the line

  // configure motor
  pinMode(MOTOR_FAULT_PIN, INPUT); // DRV8833 H-bridge motor driver fault pin, pulled up no fault, tied to ground on fault
  pinMode(MOTOR_SLEEP_PIN, OUTPUT); // control driver for motor
  digitalWrite(MOTOR_SLEEP_PIN, 0); // start with motor switched off
  pinMode(MOTOR_CLW_PIN, OUTPUT); // control motor in one direction using this pin
  analogWrite(MOTOR_CLW_PIN, 0); // start with motor switched off
  pinMode(MOTOR_CCLW_PIN, OUTPUT); // control motor in the other direction using this pin
  analogWrite(MOTOR_CCLW_PIN, 0); // start with motor switched off
  // the default PWM frequency is 1 kHz, slower than the maximum 5 kHz supported by the DRV8833

  // connect forever to WiFi
  Serial.print(F("connecting to WiFi: "));
  WiFi.begin(wifi_essid, wifi_password);
  unsigned int retries = 0;
  while ((WiFi.status() != WL_CONNECTED) && (retries < 15)) {
    retries++;
    delay(500);
    Serial.print(".");
  }
  if (retries > 14) {
    Serial.println(F(" failed"));
    Serial.println(F("restarting"));
    ESP.restart(); // maybe the hardware has an issue, try to solve it by restarting the board
  } else if (WiFi.status() == WL_CONNECTED) {
    Serial.println(F(" OK"));
    Serial.print(F("IP address: "));
    Serial.println(WiFi.localIP());
  }
  
  // begin listening for E1.31 data
  Serial.print(F("listening for E1.31 data: "));
  if (e131.begin(E131_MULTICAST, UNIVERSE_START, UNIVERSE_COUNT)) {
    Serial.println(F("OK"));
  } else {
    Serial.println(F(" failed"));
  }
}

void loop() {
  static uint16_t motor_speed = 0; // current motor speed
  static uint16_t target_speed = 0; // target motor speed
  static bool motor_direction = false; // if we should turn clockwise
  if (!e131.isEmpty()) { // wait for E1.31 data
    e131_packet_t packet; // where the data will be available
    e131.pull(&packet); // read packet (pull from ring)
    if (htons(packet.property_value_count) - 1 >= CHANNEL_START + 2) { // ensure the packet has enough channel for the data we are interested into
      last_packet_time = millis(); // remember when we last received a packet
      target_speed = (packet.property_values[CHANNEL_START + 1] << 8) + (packet.property_values[CHANNEL_START + 2] << 0); // extract speed value
      target_speed >>= 6; // use the 10-most significant bits as speed (PWM only goes up to 1024)
      motor_direction = (packet.property_values[CHANNEL_START + 0] < 128); // if we should turn clockwise

    } // correct packet received
  } // E131 packet received

  // set motor speed periodically
  static uint32_t motor_update_time = millis(); // when the motor speed has last been updated
  const uint16_t motor_step = 50; // the steps used to reach the target speed
  if (millis() > motor_update_time + 100) { // 100 ms passed, we can update the speed
    motor_update_time = millis(); // update time
    // step the speed to avoid sudden change
    if (target_speed > motor_speed) {
      if (target_speed - motor_speed > motor_step) {
        motor_speed += motor_step;
      } else {
        motor_speed = target_speed;
      }
    } else {
      if (motor_speed - target_speed > motor_step) {
        motor_speed -= motor_step;
      } else {
        motor_speed = target_speed;
      }
    }
    if (0 == digitalRead(MOTOR_FAULT_PIN)) { // there is a fault
      Serial.printf("motor driver reports fault\n");
      motor_speed = 0; // stop motor in case of fault
    }
    Serial.printf("motor speed: %u/%u (%s)\n", motor_speed, target_speed, motor_direction ? "clockwise" : "counter-clockwise");
  }
  
  // set motor speed (if no fault)
  if (0 == digitalRead(MOTOR_FAULT_PIN)) { // there is a fault
    digitalWrite(MOTOR_SLEEP_PIN, 0); // switch driver off
    analogWrite(MOTOR_CLW_PIN, 0); // switch motor off
    analogWrite(MOTOR_CCLW_PIN, 0); // switch motor off
  } else if (0 == motor_speed) { // switch driver (and motor) off
    digitalWrite(MOTOR_SLEEP_PIN, 0); // switch driver off
    analogWrite(MOTOR_CLW_PIN, 0); // switch motor off
    analogWrite(MOTOR_CCLW_PIN, 0); // switch motor off
  } else {
    digitalWrite(MOTOR_SLEEP_PIN, 1); // switch driver on
    if (motor_direction) { // turn clockwise
      analogWrite(MOTOR_CCLW_PIN, 0);
      analogWrite(MOTOR_CLW_PIN, motor_speed);
    } else { // turn counter clockwise
      analogWrite(MOTOR_CLW_PIN, 0);
      analogWrite(MOTOR_CCLW_PIN, motor_speed);
    }
  }
}
