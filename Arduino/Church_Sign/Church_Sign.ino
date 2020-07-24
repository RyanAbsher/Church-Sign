#include <ESP8266WiFi.h>
#include <ESP8266mDNS.h>
#include <FastLED.h>
#include <ESP8266WebServer.h>

#ifndef STASSID
//#define STASSID "BobNet_Down"
//#define STAPSK  "TurtleBusMothArm"
#define STASSID "SmartRG4cfe"
#define STAPSK  "3c9066494cfe"
#endif

int n; //Available services

const char* ssid     = STASSID;
const char* password = STAPSK;
char hostString[16] = {0};

ESP8266WebServer server(80);

#define NUM_LEDS 25
#define DATA_PIN 2

CRGB leds[NUM_LEDS];

int curColor = 0;

unsigned long partyTimer = 0;

void discover()
{
  Serial.println("Sending mDNS query");
  n = MDNS.queryService("sign", "tcp"); // Send out query for esp tcp services
  Serial.println("mDNS query done");
  if (n == 0) {
    Serial.println("no services found");
  } else {
    Serial.print(n);
    Serial.println(" service(s) found");
    for (int i = 0; i < n; ++i) {
      // Print details for each service found
      Serial.print(i + 1);
      Serial.print(": ");
      Serial.print(MDNS.hostname(i));
      Serial.print(" (");
      Serial.print(MDNS.IP(i));
      Serial.print(":");
      Serial.print(MDNS.port(i));
      Serial.println(")");
    }
  }
  Serial.println();

  Serial.println("loop() next");
}

void handleSentVar() {
  if (server.hasArg("color"))
  { // this is the variable sent from the client
    curColor = server.arg("color").toInt();
    server.send(200, "text/html", "Data received");
    if(curColor == 0)
    {
      fill_solid(leds, NUM_LEDS, CRGB::Black);
      FastLED.show();
    }
    else if(curColor == 1)
    {
      FastLED.setBrightness(255);
      fill_solid(leds, NUM_LEDS, CRGB::Green);
      FastLED.show();
      delay(250);
      fill_solid(leds, NUM_LEDS, CRGB::Black);
      FastLED.show();
      delay(250);
      fill_solid(leds, NUM_LEDS, CRGB::Green);
      FastLED.show();
      delay(250);
      fill_solid(leds, NUM_LEDS, CRGB::Black);
      FastLED.show();
      delay(250);
      fill_solid(leds, NUM_LEDS, CRGB::Green);
      FastLED.show();
    }
    else if(curColor == 2)
    {
      FastLED.setBrightness(255);
      fill_solid(leds, NUM_LEDS, CRGB::Yellow);
      FastLED.show();
      delay(250);
      fill_solid(leds, NUM_LEDS, CRGB::Black);
      FastLED.show();
      delay(250);
      fill_solid(leds, NUM_LEDS, CRGB::Yellow);
      FastLED.show();
      delay(250);
      fill_solid(leds, NUM_LEDS, CRGB::Black);
      FastLED.show();
      delay(250);
      fill_solid(leds, NUM_LEDS, CRGB::Yellow);
      FastLED.show();
    }
    else if(curColor == 3)
    {
      FastLED.setBrightness(255);
      fill_solid(leds, NUM_LEDS, CRGB::Red);
      FastLED.show();
      delay(250);
      fill_solid(leds, NUM_LEDS, CRGB::Black);
      FastLED.show();
      delay(250);
      fill_solid(leds, NUM_LEDS, CRGB::Red);
      FastLED.show();
      delay(250);
      fill_solid(leds, NUM_LEDS, CRGB::Black);
      FastLED.show();
      delay(250);
      fill_solid(leds, NUM_LEDS, CRGB::Red);
      FastLED.show();
    }
    Serial.print("CurColor: ");
    Serial.println(curColor);
    }
}

void setup()
{

  FastLED.addLeds<WS2812B, DATA_PIN, GRB>(leds, NUM_LEDS);

  fill_solid(leds, NUM_LEDS, CRGB::Black);

  FastLED.show();
  
  Serial.begin(115200);
  delay(100);
  Serial.println("\r\nsetup()");

  sprintf(hostString, "Sign_KIA");
  Serial.print("Hostname: ");
  Serial.println(hostString);
  WiFi.hostname(hostString);

  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(250);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());

  if (!MDNS.begin(hostString)) {
    Serial.println("Error setting up MDNS responder!");
  }
  Serial.println("mDNS responder started");
  MDNS.addService("sign", "tcp", 8080); // Announce esp tcp service on port 8080

  fill_solid(leds, NUM_LEDS, CRGB::Red);
  FastLED.show();
  delay(250);
  fill_solid(leds, NUM_LEDS, CRGB::Green);
  FastLED.show();
  delay(250);
  fill_solid(leds, NUM_LEDS, CRGB::Blue);
  FastLED.show();
  delay(250);
  fill_solid(leds, NUM_LEDS, CRGB::Black);
  FastLED.show();

  discover();

  server.on("/data/", HTTP_GET, handleSentVar); // when the server receives a request with /data/ in the string then run the handleSentVar function
  server.begin();
}
  

void loop()
{
  // put your main code here, to run repeatedly:
  MDNS.update();
  server.handleClient();
  if(curColor == 4)
  {
    if(partyTimer == 0)
    {
      partyTimer = millis() + 300;
      
    }
    
    if(millis() >= partyTimer)
    {
      int red = random(0, 255);
      int green = random(0, 255);
      int blue = random(0, 255);
      FastLED.setBrightness(255);
      fill_solid(leds, NUM_LEDS, CRGB(red, green, blue));
      FastLED.show();
      for(int i = 255; i > 0; i=i-10)
      {
        FastLED.setBrightness(i);
        FastLED.show();
        delay(5);
      }
      partyTimer = 0;
    }
  }
  
}
