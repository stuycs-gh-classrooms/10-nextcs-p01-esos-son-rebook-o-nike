class Ball {
    float x, y, radius, xSpeed, ySpeed;

    Ball(PVector p, float radius) {
        this.x = p.x;
        this.y = p.y;
        this.radius = radius;
    }

    void setSpeed(float xSpeed, float ySpeed) {
        this.xSpeed = xSpeed;
        this.ySpeed = ySpeed;
    }

    void move() {
        x += xSpeed;
        y += ySpeed;

        if (x < radius || x > width - radius) {
            xSpeed *= -1;
        }

        if (y < radius) {
            ySpeed *= -1;
        }

        if (y > height) {
            reset();
        }
    }

    void reset() {
        x = width / 2;
        y = height / 2;
        ySpeed *= -1;
    }
    void display() {
        fill(255);
        ellipse(x, y, radius * 2, radius * 2);
    }

    void checkCollision(Paddle paddle, Brick[][] bricks) {
        if (paddle.hitBall(this)) {
            ySpeed *= -1;
        }

        for (int row = 0; row < bricks.length; row++) {
            for (int col = 0; col < bricks[row].length; col++) {
                Brick brick = bricks[row][col];
                if (!brick.isDestroyed && brick.hitByBall(this)) {
                    ySpeed *= -1;
                    brick.isDestroyed = true;
                    return;
                }
            }
        }
    }
}


