class Brick {
    float x, y, width, height;
    boolean isDestroyed = false;

    Brick(float x, float y, float width, float height) {
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
    }

    void display() {
        fill(200, 0, 0);
        rect(x, y, width, height);
    }

    boolean hitByBall(Ball ball) {
        return ball.x > x && ball.x < x + width && ball.y - ball.radius < y + height && ball.y + ball.radius > y;
    }
}

