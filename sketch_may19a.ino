const int pResistor1 = 2; 
const int pResistor2 = 3;
const int pResistor3 = 4; 
const int pResistor4 = 5;
const int pResistor5 = 6;
const int pResistor6 = 7;
const int pResistor7 = 8; 
const int pResistor8 = 9;
const int buzzer=10;
int value1; 
int value2;
int value3; 
int value4;
int value5; 
int value6;
int value7; 
int value8;

void setup(){
 pinMode(buzzer, OUTPUT);
 pinMode(pResistor1, INPUT);
 pinMode(pResistor2, INPUT);
 pinMode(pResistor3, INPUT);
 pinMode(pResistor4, INPUT);
 pinMode(pResistor5, INPUT);
 pinMode(pResistor6, INPUT);
 pinMode(pResistor7, INPUT);
 pinMode(pResistor8, INPUT);
}

void loop(){
  value1 = digitalRead(pResistor1);
  value2 = digitalRead(pResistor2);
  value3 = digitalRead(pResistor3);
  value4 = digitalRead(pResistor4);
  value5 = digitalRead(pResistor5);
  value6 = digitalRead(pResistor6);
  value7 = digitalRead(pResistor7);
  value8 = digitalRead(pResistor8);
  if (value1 == HIGH){
    noTone(buzzer);
  }
  else{
    tone(buzzer, 131);
  }
  if (value2 == HIGH){
    noTone(buzzer); 
  }
  else{
    tone(buzzer, 147); 
  }

if (value3 == HIGH){
    noTone(buzzer); 
  }
  else{
    tone(buzzer, 165); 
  }
  if (value4 == HIGH){
    noTone(buzzer); 
  }
  else{
    tone(buzzer, 175); 
  }

if (value5 == HIGH){
    noTone(buzzer); 
  }
  else{
    tone(buzzer, 196);
  }
  if (value6 == HIGH){
    noTone(buzzer); 
  }
  else{
    tone(buzzer, 220); 
  }

if (value7 == HIGH){
    noTone(buzzer); 
  }
  else{
    tone(buzzer, 245); 
  }
  if (value8 == HIGH){
    noTone(buzzer); 
  }
  else{
    tone(buzzer, 262); 
  }


}
