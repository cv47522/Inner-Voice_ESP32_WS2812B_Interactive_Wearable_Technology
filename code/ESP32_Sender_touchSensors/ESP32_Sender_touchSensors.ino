/*
  Rui Santos
  Complete project details at https://RandomNerdTutorials.com/esp-now-esp32-arduino-ide/
  
  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files.
  
  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.
*/

#include <esp_now.h>
#include <WiFi.h>

// REPLACE WITH YOUR RECEIVER MAC Address
uint8_t broadcastAddress[] = {0x24, 0x6F, 0x28, 0x7A, 0xA0, 0xF4};

#define THUMB 27 //ADC pin: analog (0-4095)
#define POINTER 32
#define MIDDLE_FINGER 15
#define RING_FINGER 14
#define PINKY 33

const int touchPinArray[5] = {THUMB, POINTER, MIDDLE_FINGER, RING_FINGER, PINKY};
int touchValInArray[5] = {0};
int touchValOutArray[5] = {0};

//const int threshold = 35;
const int rangeMax = 25; //25, 40
const int rangeMin = 0; //20

// callback when data is sent
void OnDataSent(const uint8_t *mac_addr, esp_now_send_status_t status) {
  Serial.print("\r\nLast Packet Send Status:\t");
  Serial.println(status == ESP_NOW_SEND_SUCCESS ? "Delivery Success" : "Delivery Fail");
}
 
void setup() {
  // Init Serial Monitor
  Serial.begin(115200);
 
  // Set device as a Wi-Fi Station
  WiFi.mode(WIFI_STA);

  // Init ESP-NOW
  if (esp_now_init() != ESP_OK) {
    Serial.println("Error initializing ESP-NOW");
    return;
  }

  // Once ESPNow is successfully Init, we will register for Send CB to
  // get the status of Trasnmitted packet
  esp_now_register_send_cb(OnDataSent);
  
  // Register peer
  esp_now_peer_info_t peerInfo;
  memcpy(peerInfo.peer_addr, broadcastAddress, 6);
  peerInfo.channel = 0;  
  peerInfo.encrypt = false;
  
  // Add peer        
  if (esp_now_add_peer(&peerInfo) != ESP_OK){
    Serial.println("Failed to add peer");
    return;
  }
}
 
void loop() {
  // this for loop works correctly with an array of any type or size
  for (byte i = 0; i < (sizeof(touchPinArray) / sizeof(touchPinArray[0])); i++) {
    touchValInArray[i] = touchRead(touchPinArray[i]);
//    touchValInArray[i] = (touchRead(touchPinArray[i]) > rangeMax) ? rangeMax : touchRead(touchPinArray[i]);
    touchValOutArray[i] = map(touchValInArray[i], rangeMax, rangeMin, 0, 255);
    Serial.print("Send Finger ");
    Serial.print(i+1);
    Serial.print(": ");
    Serial.println(touchValInArray[i]);
  }
  
//  thumbValIn = (touchRead(THUMB) > rangeMax) ? rangeMax : thumbValIn;
//  // map it to the range of the analog out:
////  thumbValueIn = map(thumbValueIn, 0, 4095, 0, 255);
//  thumbValOut = map(thumbValIn, rangeMax, rangeMin, 0, 255);
 
  // Send message via ESP-NOW
  esp_err_t result = esp_now_send(broadcastAddress, (uint8_t *) &touchValInArray, sizeof(touchValInArray));
//  esp_err_t result = esp_now_send(broadcastAddress, (uint8_t *) &touchValOutArray, sizeof(touchValOutArray));
   
  if (result == ESP_OK) {
    Serial.print("Sent with success, Button State: ");
  }
  else {
    Serial.println("Error sending the data");
  }

//  Serial.println(thumbValOut);
//  Serial.println(thumbValIn);
  delay(200);
}
