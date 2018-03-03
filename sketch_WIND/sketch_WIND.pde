import processing.serial.*;
Serial mySerialPort; //declared
//--------------------------------------------------
String str;
String ss1 = "515"; //
String ss2 = "515"; // 
String numberComingIn;
boolean isFirstBytes = true;
int pOne;
int pTwo;
boolean comm = true;
int winder = 0;
//--------------------------------------------------
boolean safe = false ;
boolean levelOne = true;
boolean  jumpTwo = false;
boolean  jumpThree = false;
boolean  jumpFour = false;
boolean jumpFive = false;
boolean jumpSix = false;
boolean jumpSeven = false;
boolean jumpEight = false;
boolean beaten = false;
boolean instr = true;
//--------------------------------------------------
//float numberComingInX = 100;
//float numberComingInY = 100;
//--------------------------------------------------
int cols = 14;
int rows =14;
String  winder1;   // variable that makes wind blow 
int windCount;    // when the wind wants to blow 
int iden; 
int wind = 4;  // how hard the wind is 
int nextLevel = 1;

//--------------------------------------------------
Jay player = new Jay(15, 665); // levels each grid is a different unique level
Level grid1 = new Level(1);
Level grid2 = new Level(2);
Level grid3 = new Level(3);
Level grid4 = new Level(4);
Level grid5 = new Level(5);
Level grid6 = new Level(6);
Level grid7 = new Level(7);
Level grid8 = new Level(8);
Level grid9 = new Level(9);
//---------------------------------------------------
void setup() {
  size(700, 700);
  smooth();
  frameRate(60);
   mySerialPort = new Serial(this, "COM3", 9600);  //initialized  disable funtions if not using controller 
   mySerialPort.bufferUntil('\n');                         // this too^^^^^^
}
void draw() {
  background(100, 255, 100);
  if (instr == true) {
    instruction();
  } 
  winder++; // wind variable in which the windcounts 
  jumpLevel(); // determines which level game is on 
  player.run();// jay is enabled 
  starter(); // kick starts the game
}


void starter() { // this method initiates the wind 
  grid1.windex= true;
  grid1.windOne(); // wind method starts
}

void jumpLevel () { // draws the level and determines which it is 
  if (nextLevel == 1 ) { 
    grid1.generateLevel();
    grid1.IfStates();
  }
  if (nextLevel == 2 ) { 
    instr = false;
    grid2.generateLevel();
    grid2.IfStates();
  }
  if (nextLevel == 3 ) { 
    grid3.generateLevel();
    grid3.IfStates();
  }
  if (nextLevel == 4 ) { 
    grid4.generateLevel();
    grid4.IfStates();
  }
  if (nextLevel == 5 ) { 
    grid5.generateLevel();
    grid5.IfStates();
  }
  if (nextLevel == 6 ) { 
    grid6.generateLevel();
    grid6.IfStates();
  } 
  if (nextLevel == 7 ) { 
    grid7.generateLevel();
    grid7.IfStates();
  } 
  if (nextLevel == 8 ) { 
    grid8.generateLevel();
    grid8.IfStates();
  } 
  if (nextLevel == 9 ) { 
    grid9.generateLevel();
  }
}
void serialEvent ( Serial mySerialPort ) { // incoming joystick stick data 
  if (isFirstBytes) {
    isFirstBytes = false; //throws out unused bytes of information because processing and ard arent in sync
  } else {
    numberComingIn = (mySerialPort.readStringUntil('\n'));
    String str = numberComingIn;
    pOne = str.indexOf(",");
    ss1 = str.substring(0, pOne);
    ss2 = str.substring(pOne+1, str.length()-1);
  }
  mySerialPort.clear();
}
void instruction() {
  fill(0);
  textSize(32);
  text("Directions", 430, 300);
  textSize(20);
  text("Navigate player to the ", 430, 332);
  text("red block without", 430, 360);
  text("touching the black edges ", 430, 390);
  text("A wind will blow every", 430, 420);
  text("10 seconds and if you ", 430, 450);
  text("aren't in the orange safe ", 430, 480);
  text("zones you will be pushed  ", 430, 510);
  text("back. There are 8 Levels  ", 430, 540);
  text("GOOD LUCK ", 430, 570);
}