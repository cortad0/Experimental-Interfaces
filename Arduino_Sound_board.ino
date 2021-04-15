#include <PushButton.h> // Include the PushButton library
#define BUTTONELEVEN 11// Define which pin your button is connected to
#define BUTTONTWELVE 12
#define BUTTONTHREE 3
#define BUTTONFOUR 4
#define BUTTONFIVE 5
#define BUTTONSIX 6
#define BUTTONSEVEN 7
#define BUTTONEIGHT 8
#define BUTTONNINE 9
#define BUTTONTEN 10

PushButton myButton11(BUTTONELEVEN);
PushButton myButton12(BUTTONTWELVE);
PushButton myButton3(BUTTONTHREE);
PushButton myButton4(BUTTONFOUR);
PushButton myButton5(BUTTONFIVE);
PushButton myButton6(BUTTONSIX);
PushButton myButton7(BUTTONSEVEN);
PushButton myButton8(BUTTONEIGHT);
PushButton myButton9(BUTTONNINE);
PushButton myButton10(BUTTONTEN);

void setup(){
  Serial.begin(9600);
  pinMode(BUTTONELEVEN,11);
  pinMode(BUTTONTWELVE,12);
  pinMode(BUTTONTHREE,3);
  pinMode(BUTTONFOUR,4);
  pinMode(BUTTONFIVE,5);
  pinMode(BUTTONSIX,6);
  pinMode(BUTTONSEVEN,7);
  pinMode(BUTTONEIGHT,8);
  pinMode(BUTTONNINE,9);
  pinMode(BUTTONTEN,10);
  
}
void loop() {
  // put your main code here, to run repeatedly:
  myButton11.update();
  myButton12.update();
  myButton3.update();
  myButton4.update();
  myButton5.update();
  myButton6.update();
  myButton7.update();
  myButton8.update();
  myButton9.update();
  myButton10.update();

  if (myButton11.isClicked()){
    Serial.print("I");
  }

  if (myButton12.isClicked()){
    Serial.print("V");
  }

  if (myButton3.isClicked()){
    Serial.print("3");
  }

  if (myButton4.isClicked()){
    Serial.print("4");
  }
  
  if (myButton5.isClicked()){
    Serial.print("5");
  }

  if (myButton6.isClicked()){
    Serial.print("6");
  }
  
  if (myButton7.isClicked()){
    Serial.print("7");
  }

  if (myButton8.isClicked()){
    Serial.print("8");
  }

  if (myButton9.isClicked()){
    Serial.print("9");
  }
  
  if (myButton10.isClicked()){
    Serial.print("X");
  }

  
  }
  
