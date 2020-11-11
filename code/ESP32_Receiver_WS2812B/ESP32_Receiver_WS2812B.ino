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
#include <analogWrite.h>

int fingerData[5] = {0}; // THUMB, POINTER, MIDDLE_FINGER, RING_FINGER, PINKY
const int threshold = 23;

#include <FastLED.h>
//#define MAX_POWER_MILLIAMPS 500
#define BRIGHTNESS          150
#define NUM_LEDS 8
#define DATA_PIN 12 
CRGB leds[NUM_LEDS];

#define UPDATES_PER_SECOND 100
CRGBPalette16 currentPalette;
TBlendType    currentBlending;

extern CRGBPalette16 myRedWhiteBluePalette;
extern const TProgmemPalette16 myRedWhiteBluePalette_p PROGMEM;


// callback function that will be executed when data is received
void OnDataRecv(const uint8_t * mac, const uint8_t *incomingData, int len) {
  memcpy(&fingerData, incomingData, sizeof(fingerData));
  // this for loop works correctly with an array of any type or size
  for (byte i = 0; i < (sizeof(fingerData) / sizeof(fingerData[0])); i++) {
    Serial.print("Get Finger ");
    Serial.print(i+1);
    Serial.print(": ");
    Serial.println(fingerData[i]);
  }

  if (fingerData[0] <= threshold && fingerData[1] > threshold && fingerData[2] > threshold && fingerData[3] > threshold && fingerData[4] > threshold) {
    for (int i=0; i<NUM_LEDS; i++) {
      leds[i] = CRGB::Red;
      FastLED.show();
    }
  }else if (fingerData[1] <= threshold && fingerData[0] > threshold && fingerData[2] > threshold && fingerData[3] > threshold && fingerData[4] > threshold) {
    for (int i=0; i<NUM_LEDS; i++) {
      leds[i] = CRGB::Blue;
      FastLED.show();
    }
  }else if (fingerData[2] <= threshold && fingerData[0] > threshold && fingerData[1] > threshold && fingerData[3] > threshold && fingerData[4] > threshold) {
    for (int i=0; i<NUM_LEDS; i++) {
      leds[i] = CRGB::Green;
      FastLED.show();
    }
  }else if (fingerData[3] <= threshold && fingerData[0] > threshold && fingerData[1] > threshold && fingerData[2] > threshold && fingerData[4] > threshold) {
    for (int i=0; i<NUM_LEDS; i++) {
      leds[i] = CRGB::Yellow;
      FastLED.show();
    }
  }else if (fingerData[4] <= threshold && fingerData[0] > threshold && fingerData[1] > threshold && fingerData[2] > threshold && fingerData[3] > threshold) {
    for (int i=0; i<NUM_LEDS; i++) {
      leds[i] = CRGB::Pink;// Green, Blue, Red
      FastLED.show();
    }
  }// FirstLight
  else if (fingerData[1] <= threshold && fingerData[3] <= threshold && fingerData[0] > threshold && fingerData[2] > threshold && fingerData[4] > threshold) {
    for(int whiteLed = 0; whiteLed < NUM_LEDS; whiteLed = whiteLed + 1) {
      leds[whiteLed] = CRGB::White;
      FastLED.show();
      delay(100);
      leds[whiteLed] = CRGB::Black;
   }
  }// ColorPalette
  else if (fingerData[2] <= threshold && fingerData[3] <= threshold && fingerData[0] > threshold && fingerData[1] > threshold && fingerData[4] > threshold) {
    ChangePalettePeriodically();
    
    static uint8_t startIndex = 0;
    startIndex = startIndex + 1; /* motion speed */
    
    FillLEDsFromPaletteColors( startIndex);
    
    FastLED.show();
    FastLED.delay(1000 / UPDATES_PER_SECOND);
  }// Cylon
  else if (fingerData[1] <= threshold && fingerData[2] <= threshold && fingerData[3] <= threshold && fingerData[0] > threshold && fingerData[4] > threshold) {
    static uint8_t hue = 0;
    for(int i = 0; i < NUM_LEDS; i++) {
      leds[i] = CHSV(hue++, 255, 255);
      FastLED.show(); 
      fadeall();
      delay(10);
    }
    for(int i = (NUM_LEDS)-1; i >= 0; i--) {
      leds[i] = CHSV(hue++, 255, 255);
      FastLED.show();
      fadeall();
      delay(10);
    }
  }else {
    for (int i=0; i<NUM_LEDS; i++) {
      leds[i] = CRGB::Black;
      FastLED.show();
    }
  }
}
 
void setup() {
  FastLED.addLeds<WS2812B, DATA_PIN, GRB>(leds, NUM_LEDS);  // GRB ordering is typical
//  FastLED.setMaxPowerInVoltsAndMilliamps(5, MAX_POWER_MILLIAMPS);
  FastLED.setBrightness(BRIGHTNESS);
  
  currentPalette = RainbowColors_p;
  currentBlending = LINEARBLEND;
    
  // Initialize Serial Monitor
  Serial.begin(115200);
  
  // Set device as a Wi-Fi Station
  WiFi.mode(WIFI_STA);

  // Init ESP-NOW
  if (esp_now_init() != ESP_OK) {
    Serial.println("Error initializing ESP-NOW");
    return;
  }
  
  // Once ESPNow is successfully Init, we will register for recv CB to
  // get recv packer info
  esp_now_register_recv_cb(OnDataRecv);
}
 
void loop() {

}
void fadeall() { for(int i = 0; i < NUM_LEDS; i++) { leds[i].nscale8(250); } }

void FillLEDsFromPaletteColors( uint8_t colorIndex)
{
    uint8_t brightness = 255;
    
    for( int i = 0; i < NUM_LEDS; i++) {
        leds[i] = ColorFromPalette( currentPalette, colorIndex, brightness, currentBlending);
        colorIndex += 3;
    }
}

void ChangePalettePeriodically()
{
    uint8_t secondHand = (millis() / 1000) % 60;
    static uint8_t lastSecond = 99;
    
    if( lastSecond != secondHand) {
        lastSecond = secondHand;
        if( secondHand ==  0)  { currentPalette = RainbowColors_p;         currentBlending = LINEARBLEND; }
        if( secondHand == 10)  { currentPalette = RainbowStripeColors_p;   currentBlending = NOBLEND;  }
        if( secondHand == 15)  { currentPalette = RainbowStripeColors_p;   currentBlending = LINEARBLEND; }
        if( secondHand == 20)  { SetupPurpleAndGreenPalette();             currentBlending = LINEARBLEND; }
        if( secondHand == 25)  { SetupTotallyRandomPalette();              currentBlending = LINEARBLEND; }
        if( secondHand == 30)  { SetupBlackAndWhiteStripedPalette();       currentBlending = NOBLEND; }
        if( secondHand == 35)  { SetupBlackAndWhiteStripedPalette();       currentBlending = LINEARBLEND; }
        if( secondHand == 40)  { currentPalette = CloudColors_p;           currentBlending = LINEARBLEND; }
        if( secondHand == 45)  { currentPalette = PartyColors_p;           currentBlending = LINEARBLEND; }
        if( secondHand == 50)  { currentPalette = myRedWhiteBluePalette_p; currentBlending = NOBLEND;  }
        if( secondHand == 55)  { currentPalette = myRedWhiteBluePalette_p; currentBlending = LINEARBLEND; }
    }
}

void SetupTotallyRandomPalette()
{
    for( int i = 0; i < 16; i++) {
        currentPalette[i] = CHSV( random8(), 255, random8());
    }
}

void SetupBlackAndWhiteStripedPalette()
{
    // 'black out' all 16 palette entries...
    fill_solid( currentPalette, 16, CRGB::Black);
    // and set every fourth one to white.
    currentPalette[0] = CRGB::White;
    currentPalette[4] = CRGB::White;
    currentPalette[8] = CRGB::White;
    currentPalette[12] = CRGB::White;
    
}

void SetupPurpleAndGreenPalette()
{
    CRGB purple = CHSV( HUE_PURPLE, 255, 255);
    CRGB green  = CHSV( HUE_GREEN, 255, 255);
    CRGB black  = CRGB::Black;
    
    currentPalette = CRGBPalette16(
                                   green,  green,  black,  black,
                                   purple, purple, black,  black,
                                   green,  green,  black,  black,
                                   purple, purple, black,  black );
}

const TProgmemPalette16 myRedWhiteBluePalette_p PROGMEM =
{
    CRGB::Red,
    CRGB::Gray, // 'white' is too bright compared to red and blue
    CRGB::Blue,
    CRGB::Black,
    
    CRGB::Red,
    CRGB::Gray,
    CRGB::Blue,
    CRGB::Black,
    
    CRGB::Red,
    CRGB::Red,
    CRGB::Gray,
    CRGB::Gray,
    CRGB::Blue,
    CRGB::Blue,
    CRGB::Black,
    CRGB::Black
};
