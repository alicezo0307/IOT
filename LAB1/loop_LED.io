#include <Arduino.h>

 // state
const int led_on = 1;
const int led_off = 2;

int list_led[] = {D2,D3,D4,D5};
int state;
int count = 0;
int i = 0;

void setup()
{
  Serial.begin(115200);
  pinMode(D2, OUTPUT);
  pinMode(D3, OUTPUT);
  pinMode(D4, OUTPUT);
  pinMode(D5, OUTPUT);
  state = 1;
}

void loop()
{
  if(state == 1){
    digitalWrite(list_led[i],HIGH);
    Serial.println(i);
    delay(100);
    state = 2;
  }
  else if(state == 2){
    digitalWrite(list_led[i],LOW);
    Serial.println(i);
    if(i == 4){
      i=0;
    }else i++;
    state = 1;
  }
}
