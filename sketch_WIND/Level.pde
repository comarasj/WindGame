class Level {
  Platform[][] brick = new Platform [14][14]; // method of building the actual rectangles 
  int[][] gridNumber = new int[14][14] ; // array of numbers that assign values to rectangles 
  int lX= 0; // control coordinates
  int lY= 0; //    ^^^
  boolean levelStart = false ;
  int iden;
  int time;      // how long the wind blows  which = time - windcount 
  boolean windex = false;
  float x = 5 ;
  float y = 5;
  float d = 10;
  float dist = 25;


  //_______________________________________________________________________________

  Level(int whichLevel ) {    //constructer 



    if (whichLevel==1) {    // level one grid 
      int [][] gridNumbers = 

      {
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4
        }
        , //0
        {
          2, 2, 2, 2, 2, 3, 1, 1, 1, 1, 1, 1, 1, 1
        }
        , //1
        {
          2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2
        }
        , //2
        {
          2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2
        }
        , //3
        {
          2, 2, 2, 2, 2, 1, 2, 6, 6, 6, 6, 6, 6, 6
        }
        , //4
        {
          2, 2, 2, 2, 2, 1, 2, 6, 9, 9, 9, 9, 9, 9
        }
        , //5
        {
          2, 2, 2, 2, 2, 1, 2, 6, 9, 9, 9, 9, 9, 9
        }
        , //6
        {
          2, 2, 2, 2, 2, 1, 2, 6, 9, 9, 9, 9, 9, 9
        }
        , //7
        {
          2, 2, 2, 2, 2, 1, 2, 6, 9, 9, 9, 9, 9, 9
        }
        , //8
        {
          1, 1, 1, 3, 1, 1, 2, 6, 9, 9, 9, 9, 9, 9
        }
        , //9
        {
          1, 2, 2, 2, 2, 2, 2, 6, 9, 9, 9, 9, 9, 9
        }
        , //10
        {
          1, 2, 2, 2, 2, 2, 2, 6, 9, 9, 9, 9, 9, 9
        }
        , //11
        {
          1, 2, 2, 2, 2, 2, 2, 6, 9, 9, 9, 9, 9, 9
        }
        , //12
        {
          0, 2, 2, 2, 2, 2, 2, 6, 6, 6, 6, 6, 6, 6
        }
      }; //13
      gridNumber = gridNumbers;
    } else if (whichLevel == 2) { // Level two grid
      int [][] gridNumbers = 

      {
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 4
        }
        , //0
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2
        }
        , //1
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 3, 2
        }
        , //2
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2
        }
        , //3
        {
          2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 2
        }
        , //4
        {
          2, 2, 2, 2, 2, 2, 2, 3, 2, 2, 2, 2, 2, 2
        }
        , //5
        {
          2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2
        }
        , //6
        {
          2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2
        }
        , //7
        {
          2, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2
        }
        , //8
        {
          2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
        }
        , //9
        {
          2, 3, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2
        }
        , //10
        {
          2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2
        }
        , //11
        {
          2, 2, 2, 2, 2, 2, 2, 3, 2, 2, 2, 2, 2, 2
        }
        , //1
        {
          0, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2
        }
      };//13
      gridNumber = gridNumbers;
    } else if (whichLevel == 3) { // Level Three grid
      int [][] gridNumbers = 

      {

        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 4
        }
        , //0
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2
        }
        , //1
        {
          2, 2, 2, 2, 1, 1, 1, 1, 1, 3, 1, 2, 2, 2
        }
        , //2
        {
          2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2
        }
        , //3
        {
          2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 3, 1, 1, 2
        }
        , //4
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2
        }
        , //5
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2
        }
        , //6
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2
        }
        , //7
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2
        }
        , //8
        {
          2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 2, 2, 1, 2
        }
        , //9
        {
          1, 1, 1, 1, 2, 3, 2, 2, 2, 1, 1, 1, 3, 2
        }
        , //10
        {
          1, 2, 2, 1, 2, 1, 1, 1, 2, 2, 2, 2, 2, 2
        }
        , //11
        {
          1, 2, 2, 1, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2
        }
        , //1
        {
          0, 2, 2, 3, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2
        }
      };//13*/
      gridNumber = gridNumbers;
    } else if (whichLevel == 4) {  //Level four Grid 
      int [][] gridNumbers = 

      {


        {
          1, 1, 1, 2, 1, 1, 1, 2, 2, 2, 2, 1, 1, 4
        }
        , //0
        {
          1, 2, 1, 2, 1, 2, 1, 2, 2, 1, 1, 1, 2, 2
        }
        , //1
        {
          1, 2, 3, 2, 1, 2, 1, 2, 2, 1, 2, 2, 2, 2
        }
        , //2
        {
          1, 2, 1, 2, 1, 2, 1, 2, 2, 3, 1, 1, 2, 2
        }
        , //3
        {
          1, 2, 1, 2, 1, 2, 1, 2, 2, 2, 2, 1, 2, 2
        }
        , //4
        {
          1, 2, 1, 2, 1, 2, 3, 1, 1, 1, 1, 1, 2, 2
        }
        , //5
        {
          1, 2, 1, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2
        }
        , //6
        {
          1, 2, 1, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2
        }
        , //7
        {
          1, 2, 1, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2
        }
        , //8
        {
          1, 2, 1, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2
        }
        , //9
        {
          1, 2, 1, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2
        }
        , //10
        {
          1, 2, 1, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2
        }
        , //11
        {
          1, 2, 1, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2
        }
        , //1
        {
          0, 2, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2
        }
      };//13*/
      gridNumber = gridNumbers;
    } else if (whichLevel == 5) {   // level five grid


      int [][] gridNumbers = {



        {
          2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 2, 1, 4
        }
        , 
        {
          3, 1, 1, 1, 1, 2, 2, 1, 2, 2, 1, 1, 1, 2
        }
        , 
        {
          2, 2, 2, 2, 1, 2, 2, 1, 2, 2, 2, 2, 2, 2
        }
        , 
        {
          2, 2, 2, 2, 1, 2, 2, 5, 2, 2, 2, 2, 1, 3
        }
        , 
        {
          2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
        }
        , 
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1
        }
        , 
        {
          2, 2, 2, 2, 1, 1, 1, 1, 3, 1, 1, 2, 2, 1
        }
        , 
        {
          3, 2, 2, 2, 1, 2, 2, 2, 2, 2, 1, 2, 2, 1
        }
        , 
        {
          1, 1, 1, 2, 1, 1, 1, 1, 2, 2, 1, 2, 3, 1
        }
        , 
        {
          1, 2, 1, 2, 2, 2, 2, 1, 3, 5, 1, 1, 1, 1
        }
        , 
        {
          1, 2, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2
        }
        , 
        {
          1, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 2, 2, 2
        }
        , 
        {
          1, 2, 2, 2, 2, 2, 2, 3, 2, 2, 1, 2, 2, 2
        }
        , 
        {
          0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2
        }
      };



      gridNumber = gridNumbers;
    } else if (whichLevel == 6) {  //level six grid 


      int [][] gridNumbers = {


        {
          1, 1, 1, 2, 2, 2, 1, 1, 1, 2, 2, 1, 1, 4
        }
        , //0
        {
          1, 2, 1, 1, 1, 1, 1, 2, 1, 2, 2, 1, 2, 2
        }
        , //1
        {
          1, 2, 2, 2, 2, 2, 3, 2, 1, 1, 2, 3, 2, 2
        }
        , //2
        {
          1, 1, 3, 1, 2, 2, 2, 2, 2, 1, 1, 1, 2, 2
        }
        , //3
        {
          2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
        }
        , //4
        {
          2, 2, 1, 1, 2, 1, 1, 1, 1, 1, 3, 1, 2, 2
        }
        , //5
        {
          2, 2, 1, 2, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1
        }
        , //6
        {
          2, 2, 1, 1, 1, 2, 3, 1, 1, 2, 2, 2, 2, 1
        }
        , //7
        {
          2, 2, 2, 2, 2, 2, 1, 2, 1, 1, 2, 2, 1, 1
        }
        , //8
        {
          2, 2, 1, 1, 1, 2, 1, 1, 2, 1, 2, 1, 1, 2
        }
        , //9
        {
          2, 1, 1, 2, 1, 2, 2, 1, 2, 1, 2, 3, 2, 2
        }
        , //10
        {
          1, 1, 2, 1, 1, 2, 1, 1, 2, 1, 2, 1, 2, 2
        }
        , //11
        {
          1, 2, 2, 1, 2, 2, 1, 2, 2, 1, 2, 1, 2, 2
        }
        , //1
        {
          0, 2, 2, 1, 3, 1, 1, 2, 2, 1, 1, 1, 2, 2
        }
      };//13*/

      gridNumber = gridNumbers;
    } else if (whichLevel == 7) {  //level seven grid 


      int [][] gridNumbers = 
      {
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4
        }
        , 
        {
          2, 2, 1, 1, 2, 2, 5, 5, 5, 5, 1, 1, 1, 1
        }
        , 
        {
          2, 2, 2, 2, 2, 2, 5, 2, 2, 2, 1, 2, 2, 5
        }
        , 
        {
          2, 2, 2, 2, 2, 2, 5, 2, 2, 2, 1, 3, 1, 1
        }
        , 
        {
          2, 1, 2, 2, 2, 2, 5, 2, 2, 2, 2, 2, 2, 1
        }
        , 
        {
          5, 1, 1, 1, 5, 5, 3, 2, 2, 2, 2, 2, 1, 1
        }
        , 
        {
          5, 2, 5, 5, 5, 2, 2, 2, 2, 1, 1, 1, 1, 2
        }
        , 
        {
          5, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 2
        }
        , 
        {
          5, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 1
        }
        , 
        {
          5, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 2
        }
        , 
        {
          5, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 5, 5, 5
        }
        , 
        {
          5, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 2
        }
        , 
        {
          5, 2, 2, 2, 2, 2, 2, 1, 1, 1, 2, 2, 2, 2
        }
        , 
        {
          0, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2
        }
      };


      gridNumber = gridNumbers;
    } else if (whichLevel == 8) {   //level eight grid 


      int [][] gridNumbers = {




        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4
        }
        , 
        {
          2, 2, 2, 2, 3, 1, 1, 1, 1, 1, 1, 2, 1, 1
        }
        , 
        {
          2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 1, 2
        }
        , 
        {
          2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 2, 2, 1, 2
        }
        , 
        {
          2, 2, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 2
        }
        , 
        {
          2, 3, 1, 1, 1, 1, 1, 1, 2, 1, 2, 2, 1, 2
        }
        , 
        {
          2, 2, 2, 2, 2, 2, 2, 1, 2, 1, 1, 2, 1, 2
        }
        , 
        {
          2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 1, 2, 3, 2
        }
        , 
        {
          1, 1, 1, 1, 1, 1, 2, 1, 2, 1, 1, 2, 1, 2
        }
        , 
        {
          1, 2, 2, 2, 2, 1, 1, 1, 2, 1, 2, 2, 1, 2
        }
        , 
        {
          1, 1, 3, 1, 1, 2, 2, 2, 2, 1, 1, 2, 1, 1
        }
        , 
        {
          2, 2, 2, 2, 1, 1, 1, 2, 2, 2, 1, 2, 2, 1
        }
        , 
        {
          1, 1, 1, 1, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1
        }
        , 
        {
          0, 2, 2, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1
        }
      };

      gridNumber = gridNumbers;
    } else if (whichLevel == 9) {  //level nine grid 


      int [][] gridNumbers = 
      {
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
        }
        , 
        {
          6, 2, 2, 2, 6, 2, 6, 6, 6, 2, 6, 2, 2, 6
        }
        , 
        {
          2, 6, 2, 6, 2, 2, 6, 2, 6, 2, 6, 2, 2, 6
        }
        , 
        {
          2, 2, 6, 2, 2, 2, 6, 2, 6, 2, 6, 2, 2, 6
        }
        , 
        {
          2, 2, 6, 2, 2, 2, 6, 2, 6, 2, 6, 2, 2, 6
        }
        , 
        {
          2, 2, 6, 2, 2, 2, 6, 6, 6, 2, 6, 6, 6, 6
        }
        , 
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
        }
        , 
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
        }
        , 
        {
          2, 6, 2, 2, 2, 6, 2, 2, 6, 2, 6, 6, 2, 6
        }
        , 
        {
          2, 6, 2, 6, 2, 6, 2, 2, 6, 2, 6, 2, 6, 6
        }
        , 
        {
          2, 2, 6, 2, 6, 2, 2, 2, 6, 2, 6, 2, 2, 6
        }
        , 
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
        }
        , 
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
        }
        , 
        {
          2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
        }
      };



      gridNumber = gridNumbers;
    }
    for (int i=0; i < 14; i++) {
      for (int j=0; j < 14; j++) {
        brick[i][j] = new Platform(lX, lY, gridNumber[i][j]);  //creates each brick on the grid 
        lX+=50;
        if (lX >=700) {
          lX =0;
          lY+=50;
        }
      }
    }
  }


  void generateLevel() {
    for (int i=0; i < 14; i++) {
      for (int j=0; j < 14; j++) {
        brick[i][j].run(); // does brick's run method 196 times
      }
    }
    levelStart = true;
  }
  void windOne() {
    wind = 3; // setting wind speed 
    time = 600;  // setting the length of the wind blowing 
    windCount =  400; // setting how long before the wind blows 
    if (windex == true) {
      if ( winder >= windCount) {
        if (safe == false ) {
          if ( beaten == false) {
            player.y += wind;
          }
        }
      }
    }
    if (winder >= time ) {
      winder = 0;
    }
    if ( winder >= windCount - 50  && winder <= time && beaten == false) {
      fill(255);

      rect(x, y, d, d);
      rect( x + 100, y, d, d);

      rect( x + 300, y, d, d);

      rect( x + 400, y, d, d);

      rect( x + 200, y, d, d);

      rect( x + 500, y, d, d);

      rect( x + 600, y, d, d);
      rect( x + 675, y, d, d);
      if ( y < 700)  y += 35;
      if (y > 700 ) y = 10;
    }
  }


  /*if ( winder <= windCount - 50 ) {
   for (int i=0; i < 14; i++) {
   for (int j=0; j < 14; j++) {
   if ( brick [i][j].iden == 3 ) {
   brick[i][j].filler = 0;
   }
   }
   }*/


  void IfStates() {
    safety();
    fall ();
    onCourse();
    winGame();
  }
  void fall () {
    for (int i=0; i < 14; i++) {
      for (int j=0; j < 14; j++) {
        if ( brick [i][j].iden == 2 ) {
          if ( player.x + 20 >= brick [i][j].x && player.x <= brick [i][j].x + brick [i][j].d && player.y + 20 >= brick [i][j].y && player.y <= brick [i][j].y + brick [i][j].d) {
            gameRestart();
          }
        }
      }
    }
  }
  void safety () {  
    for (int i=0; i < 14; i++) {
      for (int j=0; j < 14; j++) {
        if ( brick [i][j].iden == 3 || brick [i][j].iden == 0 || brick [i][j].iden == 4 || brick[i][j].iden == 5) {
          if ( player.x + 20 >= brick [i][j].x && player.x <= brick [i][j].x + brick [i][j].d && player.y + 20 >= brick [i][j].y && player.y <= brick [i][j].y + brick [i][j].d) {
            safe = true;
          }
        }
      }
    }
  }

  void onCourse () {
    for (int i=0; i < 14; i++) {
      for (int j=0; j < 14; j++) {
        if ( brick [i][j].iden == 1 ) {
          if ( player.x + 20 >= brick [i][j].x && player.x <= brick [i][j].x + brick [i][j].d && player.y + 20 >= brick [i][j].y && player.y <= brick [i][j].y + brick [i][j].d) {
            safe = false;
          }
        }
      }
    }
  }
  void winGame() {
    if ( brick [0][13].iden == 4 ) {
      if ( player.x + 20 >= brick [0][13].x && player.x <= brick [0][13].x + brick [0][13].d && player.y + 20 >= brick [0][13].y && player.y <= brick [0][13].y + brick [0][13].d) {
        gameRestart();
        if (nextLevel == 1) {
          nextLevel=2;
        }
        if ( jumpTwo == true) {
          if (nextLevel == 2 ) {
            nextLevel=3;
          }
          if ( jumpThree == true) {
            if (nextLevel== 3 ) {
              nextLevel=4;
            }
            if ( jumpFour == true) {
              if (nextLevel == 4  ) {
                nextLevel=5;
              }
              if (jumpFive == true) {
                if (nextLevel == 5) {
                  nextLevel=6;
                }

                if (jumpSix == true ) {
                  if ( nextLevel == 6) {
                    nextLevel= 7;
                  }

                  if (jumpSeven == true ) {
                    if ( nextLevel == 7) {
                      nextLevel= 8;
                    }
                    if (jumpEight == true ) {
                      if ( nextLevel == 8) {
                        nextLevel= 9;
                        beaten = true; // if levels are added move this to last level
                      }
                    }
                    jumpEight = true;
                  }
                  jumpSeven = true;
                }
                jumpSix = true;
              }
              jumpFive = true;
            }
            jumpFour = true;
          }
          jumpThree = true;
        }
        jumpTwo = true;
      }
    }
  }
  void gameRestart () {
    player.x = 15;
    player.y = 665;
  }
}

