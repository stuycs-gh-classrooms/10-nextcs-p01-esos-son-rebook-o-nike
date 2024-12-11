class Paddle {
    float y, width, height;

    Paddle(float y, float width, float height) {
        this.y = y;
        this.width = width;
        this.height = height;
    }

    void update(float mouseX) {
        this.y = constrain(mouseX - width / 2, 0, 800 - width);
    }

    void display() {
        fill(255);
        rect(y, height - 20, width, height);
    }

    boolean hitBall(Ball ball) {
        return ball.x > y && ball.x < y + width && ball.y + ball.radius > height - 20;
    }
}
