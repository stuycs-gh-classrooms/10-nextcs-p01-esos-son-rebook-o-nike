// Driver file for the Breakout game

Paddle paddle;
Ball ball;
Brick[][] bricks;
boolean isGameOver = false;
boolean isGameWon = false;

void settings() {
    size(800, 600);
}

void setup() {
    paddle = new Paddle(height - 40, 100, 15);
    ball = new Ball(new PVector(width / 2, height / 2), 15);
    ball.setSpeed(5, -5);
    bricks = createBrickGrid(5, 10, 60, 20, 10);
    noStroke();
}

void draw() {
    drawBackground();
    
    if (isGameOver) {
        displayGameOver();
        return;
    }
    
    if (isGameWon) {
        displayGameWon();
        return;
    }

    paddle.update(mouseX);
    paddle.display();

    ball.move();
    ball.display();

    ball.checkCollision(paddle, bricks);

    displayBricks();
    checkWinCondition();
}

void drawBackground() {
    for (int i = 0; i < height; i++) {
        float lerpValue = map(i, 0, height, 0, 1);
        int c = lerpColor(color(0, 0, 255), color(0), lerpValue);
        stroke(c);
        line(0, i, width, i);
    }
}

void displayGameOver() {
    fill(255, 0, 0);
    textSize(32);
    textAlign(CENTER);
    text("Game Over! Press SPACE to Restart", width / 2, height / 2);
}

void displayGameWon() {
    fill(0, 255, 0);
    textSize(32);
    textAlign(CENTER);
    text("You Win! Press SPACE to Restart", width / 2, height / 2);
}

void displayBricks() {
    for (int row = 0; row < bricks.length; row++) {
        for (int col = 0; col < bricks[row].length; col++) {
            if (!bricks[row][col].isDestroyed) {
                bricks[row][col].display();
            }
        }
    }
}

Brick[][] createBrickGrid(int rows, int cols, int brickWidth, int brickHeight, int spacing) {
    Brick[][] grid = new Brick[rows][cols];
    for (int row = 0; row < rows; row++) {
        for (int col = 0; col < cols; col++) {
            float x = col * (brickWidth + spacing) + spacing / 2;
            float y = row * (brickHeight + spacing) + spacing / 2;
            grid[row][col] = new Brick(x, y, brickWidth, brickHeight);
        }
    }
    return grid;
}

void checkWinCondition() {
    isGameWon = true;
    for (int row = 0; row < bricks.length; row++) {
        for (int col = 0; col < bricks[row].length; col++) {
            if (!bricks[row][col].isDestroyed) {
                isGameWon = false;
                return;
            }
        }
    }
}

void keyPressed() {
    if (key == ' ') {
        resetGame();
    }
}

void resetGame() {
    isGameOver = false;
    isGameWon = false;
    setup();
}

