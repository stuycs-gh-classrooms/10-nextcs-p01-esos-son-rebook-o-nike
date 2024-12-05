class BrickGrid {
 Brick[][] grid;
 int brickSize;
 PVector topLeft;
 int gridWidth;
 int gridHeight;
 int direction;
 
 BrickGrid(int rows, int cols, int bsize) {
   grid = new Brick[rows][cols];
   brickSize = bsize;
   gridWidth = brickSize * cols;
   gridHeight = brickSize * rows;
   
 }
 
 
}
