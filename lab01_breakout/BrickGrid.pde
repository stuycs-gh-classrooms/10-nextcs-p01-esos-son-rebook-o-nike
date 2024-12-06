/*
class BrickGrid{}
1. create grid of Bricks[rows][cols]
- Bricks(Vector corner, float cwidth, float cheight, int power)
- 
*/

class BrickGrid {
  Brick[][] grid;
  float brickWidth;
  float brickHeight;
  PVector topLeft;
  int gridWidth;
  int gridHeight;
  int powerChance;

  BrickGrid(int rows, int cols, int bWidth, int bHeight, int pChance) {
    grid = new Brick[rows][cols];
    brickWidth = bWidth;
    brickHeight = bHeight;
    topLeft = new PVector(0, 0);
    gridWidth = bWidth * cols;
    gridHeight = bHeight * rows;
    powerChance = pChance;
  }

  void makeBricks() {
    PVector pos = topLeft;
    for (int i = 0; i < grid.length; i++) {
      for (int j = 0; j < grid[i].length; j++) {
        grid[i][j] = new Brick(pos, brickWidth, brickHeight, power);
        
      }
    }
  }
  
  void fillPowerUp() {
    
  }
}
