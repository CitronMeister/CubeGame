/*
  Analog input, analog output, serial output

  Reads an analog input pin, maps the result to a range from 0 to 255 and uses
  the result to set the pulse width modulation (PWM) of an output pin.
  Also prints the results to the Serial Monitor.

  The circuit:
  - potentiometer connected to analog pin 0.
    Center pin of the potentiometer goes to the analog pin.
    side pins of the potentiometer go to +5V and ground
  - LED connected from digital pin 9 to ground

  created 29 Dec. 2008
  modified 9 Apr 2012
  by Tom Igoe

  This example code is in the public domain.

  http://www.arduino.cc/en/Tutorial/AnalogInOutSerial
*/

// These constants won't change. They're used to give names to the pins used:
const int analogInPin0 = A0;
const int analogInPin1 = A1;
const int analogInPin2 = A2;
const int analogInPin3 = A3;  // Analog input pin that the potentiometer is attached to
const int analogOutPin = 9; // Analog output pin that the LED is attached to

int sensorValue0 = 0;        // value read from the pot
int sensorValue1 = 0;
int sensorValue2 = 0;
int sensorValue3 = 0;



int outputValue = 0;        // value output to the PWM (analog out)
int outputValue1 = 0;
int outputValue2 = 0;
int outputValue3 = 0;

void setup() {
  // initialize serial communications at 9600 bps:
  Serial.begin(9600);
}

void loop() {
  // read the analog in value:
  sensorValue0 = analogRead(analogInPin0);
  sensorValue1 = analogRead(analogInPin1);
  sensorValue2 = analogRead(analogInPin2);
  sensorValue3 = analogRead(analogInPin3);
  
  // map it to the range of the analog out:
  outputValue = map(sensorValue0, 0, 1023, 0, 255);
  outputValue1 = map(sensorValue1, 0, 1023, 0, 255);
  outputValue2 = map(sensorValue2, 0, 1023, 0, 255);
  outputValue3 = map(sensorValue3, 0, 1023, 0, 255);
  
  // change the analog out value:
  //analogWrite(analogOutPin, outputValue);

  // print the results to the Serial Monitor:
  //Serial.print("sensor0 = ");
  Serial.print(sensorValue0);
  Serial.print(",");
  //Serial.print("sensor1 = ");
  Serial.print(sensorValue1);
  Serial.print(",");
  //Serial.print("sensor2 = ");
  Serial.print(sensorValue2);
  Serial.print(",");
  //Serial.print("sensor3 = ");
  Serial.println(sensorValue3);

  
  // wait 300 milliseconds before the next loop for the analog-to-digital
  // converter to settle after the last reading:
  delay(300);
}
