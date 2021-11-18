/* 
 Name: Hannah Dodson
 Assignment: Lab 2 - Iterative Art 1
 NMD 211 lab 1
 Date: September 10, 2021
 
 Task: create an image
 
 Steps/Components:
 *setup size
 *add background
 *add ellipses to make 'bubbles' with a class
 
 Anything else Mike or Katarina should know goes here. This includes relevant design choices. Perhaps a theme you were following. Perhaps if there's an issue you can't solve. Whatever it is, put it here. 
 */
//global variables
Bubble a;
Bubble b;
Bubble c;
Bubble d;

void setup() {
  size(500, 500);
  a = new Bubble(200, 300, 1, 1, 50, 50);//new bubble
  b = new Bubble(300,400 , 2, 2, 25, 25);
  c = new Bubble(400, 300, 1, 1, 15, 15);
  d = new Bubble(100, 100, 2, 2, 30, 30);
}

void draw() {
  background(255);
  //making the bubble visable and move
 // a.move();
  a.display();
  //b.move();
  b.display();
  //c.move();
  c.display();
  //d.move();
  d.display();
  //bubble blowing wand in bottom corner
  fill(255);
  stroke(0);
  rect(30, 380, 10, 100);
  ellipse(35, 380, 60,60);
  ellipse(35,380, 50,50);
}

class Bubble {//open curly bubble
  //location
  int x;
  int y;
  //speed
  int speedX;
  int speedY;
  //width and height
  int w;
  int h;

  Bubble(int x_, int y_, int speedX_, int speedY_, int w_, int h_) {//open curly constructor
    x = x_;
    y = y_;
    speedX = speedX_;
    speedY = speedY_;
    w = w_;
    h = h_;
  }//close constructor

  void display() {//open display
    stroke(0);
    fill(162,255,255);
    ellipse(x, y, w, h);
    noFill();
    arc(x+2, y-2, w, h, HALF_PI, PI);
  }//close display
  
/*  void move(){//open move
    // Add the current speed to the location.
    x = x + speedX;
    y = y + speedY;
    // Remember, || means "or."
    if ((x > width) || (x < 0)) {
      // If the object reaches either edge, multiply speed by -1 to turn it around.
      speedX = speedX * -1;
    }
    
        // Remember, || means "or."
    if ((y > height) || (y < 0)) {
      // If the object reaches either edge, multiply speed by -1 to turn it around.
      speedY = speedY * -1;
    }
  
    if ((x < 225) & (y > 175) & (y <255)){
      //multiply speed by -1 to turn around.
      speedX = speedX * -1;
    }
    if ((y > 225) & (x > 175) & (x<255)) {
      speedY = speedY * -1;
    }
    
    if ((y >175) & (y > 175) & (y < 255)){
    speedX = speedX * -1;
  }
   if ((y >175) & (x> 175) & (x< 255)) {
     speedY = speedY * -1;
  }
  
    }//close move */
    
}//close bubble class
