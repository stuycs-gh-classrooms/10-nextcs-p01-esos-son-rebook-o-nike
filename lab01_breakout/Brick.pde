/* 
An array of class 'Brick'
Each brick should contain:
1. coordinates/position of brick
2. width and height
*/

class Brick {
  PVector topLeft;
  float brickWidth, brickHeight;
  int power;
  
  Brick(PVector corner, float cwidth, float cheight) {
    topLeft = corner;
    brickWidth = cwidth;
    brickHeight = cheight;
    power = 0;
  } //constructor
  
  void display() {
    rect(topLeft.x, topLeft.y, brickWidth, brickHeight);
  }
  
  void powerup() {
    
  }
}
