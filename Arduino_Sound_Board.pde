PImage Coffee1;
PImage Good1;
PImage Got1;
PImage Has1;
PImage He1;
PImage Hot1;
PImage Is1;
PImage Made1;
PImage Some1;
PImage That1;

import processing.serial.*;
import ddf.minim.*;

Minim minim;
AudioSample Coffee;
AudioSample He;
AudioSample Is;
AudioSample Made;
AudioSample Some;
AudioSample Hot;
AudioSample That;
AudioSample Good;
AudioSample Got;
AudioSample Has;
Serial myPort;


void setup(){
  myPort = new Serial(this, Serial.list()[0],9600);
  
  size(500,500,P3D);
  background(255);
  frameRate(120);
  Coffee1 = loadImage("Coffee_img.jpg");
  Good1 = loadImage("Good_img.jpg");
  Got1 = loadImage("Got_img.jpg");
  Has1 = loadImage("Has_img.jpg");
  He1 = loadImage("He_img.jpg");
  Hot1 = loadImage("Hot_img.jpg");
  Is1 = loadImage("Is_img.jpg");
  Made1 = loadImage("Made_img.jpg");
  Some1 = loadImage("Some_img.jpg");
  That1 = loadImage("That_img.jpg");
  
  
  
  minim = new Minim(this);
  Coffee = minim.loadSample( "Coffee.mp3", 512);
  if ( Coffee == null ) println("Didn't get Coffee!");
    
  He = minim.loadSample( "He.mp3", 512);
  if ( He == null ) println("Didn't get He!");
  
  Is = minim.loadSample( "Is.mp3", 512);
  if ( Is == null ) println("Didn't get Is!");
  
  Made = minim.loadSample( "Made.mp3", 512);
  if ( Made == null ) println("Didn't get Made!");
  
  Some = minim.loadSample( "Some.mp3", 512);
  if ( Some == null ) println("Didn't get Some!");
  
  Hot = minim.loadSample( "Hot.mp3", 512);
  if ( Hot == null ) println("Didn't get Hot!");
  
  That = minim.loadSample( "That.mp3", 512);
  if ( That == null ) println("Didn't get That!");
  
  Good = minim.loadSample( "Good.mp3", 512);
  if ( Good == null ) println("Didn't get Good!");
  
  Got = minim.loadSample( "Got.mp3", 512);
  if ( Got == null ) println("Didn't get Got!");
  
  Has = minim.loadSample( "Has.mp3", 512);
  if ( Has == null ) println("Didn't get Has!");
}

void draw(){
    key = myPort.readChar();
  
  switch(key) {
   case'3': He.trigger();
   image(He1,0,0);
   break;
   case'4': Is.trigger();
   image(Is1,0,0);
   break;
   case'5': Made.trigger();
   image(Made1,0,0);
   break;
   case'6': Some.trigger();
   image(Some1,0,0);
   break;
   case'7': Hot.trigger();
   image(Hot1,0,0);
   break;
   case'8': Good.trigger();
   image(Good1,0,0);
   break;
   case'9': That.trigger();
   image(That1,0,0);
   break;
   case'X': Got.trigger();
   image(Got1,0,0);
   break;
   case'I': Has.trigger();
   image(Has1,0,0);
   break;
   case'V': Coffee.trigger();
   image(Coffee1,0,0);
   break; 
   case'0':
   break;
 }
 key = '0';
}
