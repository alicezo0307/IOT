#include <Arduino.h>

 // state
 /*
const int Built_on = 1;
const int Built_off = 2;
const int led_on = 3;
const int led_off = 4;

int state;
int count = 0;

void setup()
{
  Serial.begin(115200);
  pinMode(D0, OUTPUT);
  pinMode(D2, OUTPUT);
}

void loop()
{
  if (state == 1)
  {
    digitalWrite(D0, LOW); // active LOW
    Serial.println("ON Built");
    count++;
    Serial.println(count);
    delay(500);
    state = 2;
  }
  else if (state == 2)
  {
    digitalWrite(D0, HIGH); // active LOW
    Serial.println("OFF Built");
    Serial.println(count);
    if (count == 2)
    {
      state = 3;
    }
    else
    {
      delay(500);
      state = 1;
    }
  }
  else if (state == 3)
  {
    digitalWrite(D2, HIGH); // active LOW
    Serial.println("ON LED");
    count = 0;
    Serial.println(count);
    delay(500);
    state = 4;
  }
  else if (state == 4)
  {
    digitalWrite(D2, LOW); // active LOW
    Serial.println("OFF LED");
    Serial.println(count);
    state = 1;
  }
}

