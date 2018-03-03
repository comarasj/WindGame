class Jay {
  float x ; 
  float y ;  
  float  speed = (wind - .6)  ;

  Jay (float _x, float _y) { // constructer 
    x = _x;
    y = _y;
  }
  void run() {
    drawJay(); //draws jay 
    moveJay(); // jay has properties like movement
  }
  void drawJay() {
    fill(random(0, 255), random(0, 255), random(0, 255)); // random colors 
    rect(x, y, 20, 20); // ?? <-- JAY!! He exists
  }
  void moveJay() {
    keyPressed(); // move with keys up down left right
    joyMove(); // move with controller joystick
  }
  void keyPressed() {
    if ( x > 680 ) {
      x = 15 ;
      y = 665;
    } 
    if ( y > 680 ) {
      x = 15 ;
      y = 665;
    } 
    if ( x < 0) {
      x = 15 ;
      y = 665;
    }
    if ( y > 680) {
    }
    if ( y < 0) {
      x = 15 ;
      y = 665;
    }

    if (keyPressed) { // level 
      if (key == CODED) {
        if (keyCode == UP) {
          y -=speed;
        }
        if (keyCode == DOWN) {

          y += speed;
        }
        if (keyCode == LEFT) {
          x -= speed;
        }
        if (keyCode == RIGHT) {
          x += speed;
        }
        if (keyCode == ALT) {
          jumpTwo = true; // level two 
          jumpThree = true; // level 4
          jumpFour = true; // level 5
          jumpFive = true; // level 6 
          jumpSix = true; // jumps to level seven
          // jumpSeven = true; // jumps to end
        }
      }
    }
  }
  void joyMove() {  // incoming joystick numbers move Jay 


    if (int(ss1) > 600) {

      x -=speed;
    }
    if (int(ss1) < 450) {

      x+=speed;
    }

    if (int(ss2) < 475) {

      y -=speed;
    }
    if (int(ss2) > 600) {

      y +=speed;
    }
  }
}