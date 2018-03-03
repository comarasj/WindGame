class Platform {
  float x;
  float y;
  float d= 50;
  int iden; 
  float filler;

  Platform(float _x, float _y, int _iden ) {
    x = _x;
    y= _y;
    iden = _iden;
  }
  void run () {
    drawLevel();
  }
  void drawLevel() {
    // fill(random(0,255),random(0,255),random(0,255));
    if ( iden == 0 ) {
      fill(0, 255, 0);
      rect(x, y, d, d);
    }
    if ( iden == 1) {
      fill(155);
      rect(x, y, d, d);
    }
    if ( iden == 2) {
      fill(0);
      rect(x, y, d, d);
    }
    if ( iden == 3) {
      fill(255, 100, filler);
      rect(x, y, d, d);
    }
    if ( iden == 4) {
      fill(255, 0, 0);
      rect(x, y, d, d);
    }
    if ( iden == 5) {
      fill(random(17));
      rect(x, y, d, d);
    }
    if ( iden == 6) {
      fill( random(100), random(100), random(100));
      rect( x, y, d, d);
    }
  }
}

