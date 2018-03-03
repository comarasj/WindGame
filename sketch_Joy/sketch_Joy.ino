int potPinX = 0;
int potPinY = 1;
int xPosition = 0;
int yPosition = 0;
int ledPin = 13;
int winder = 0;
int time = 600;
int windCount = 400;
int fanPin = 7;
void setup () {
  Serial.begin (9600);
  pinMode(potPinX, INPUT);
  pinMode(potPinY, INPUT);
  pinMode(ledPin,OUTPUT);
}
void loop () {
  xPosition = analogRead(potPinX);
  yPosition = analogRead(potPinY);
  Serial.print(xPosition);
  Serial.print(",");
  Serial.print(yPosition);
  Serial.print('\n');
 
  if (yPosition > 550 || yPosition < 495 || xPosition > 550|| xPosition < 495){
    digitalWrite(ledPin,HIGH);
  }
  else{
    digitalWrite(ledPin,LOW);
  }

}
