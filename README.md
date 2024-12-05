[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/2bl0h1Mb)
# NeXtCS Project 01
### Name0: ETHAN MA
### Name1: SEBASTIAN TECZA
---

### Overview
Your mission is create either:
- Life-like cellular automata [life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), [life-like](https://en.wikipedia.org/wiki/Life-like_cellular_automaton), [demo](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Sample%20Models/Computer%20Science/Cellular%20Automata/Life.nlogo).
- Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)
- Space Invaders/Galaga

This project will be completed in phases. The first phase will be to work on this document. Use markdown formatting. For more markdown help [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Selection, Analysis & Plan

#### Selected Project: BREAKOUT/ARKANOID

---

### Necessary Features
These are the core features that the program must implement to ensure it is playable:
1. A paddle controlled by the player.
2. A bouncing ball that interacts with the paddle, walls, and bricks.
3. Bricks arranged in a grid that disappear when hit by the ball.
4. Game-over condition (e.g., the ball falls below the paddle).
5. Win condition (e.g., all bricks are cleared).

---

### Extra Features
Additional elements to enhance the game experience:
1. Power-ups:
   - Enlarging the paddle.
   - Slowing down the ball.
   - Adding an extra ball (multiball).
   - Gaining extra lives.
2. Increasing difficulty as levels progress:
   - Faster ball speed.
   - Different brick patterns.
3. Sound effects and music.
4. Dynamic backgrounds or animations.
5. Scoring system with bonuses for combos.
6. Pause and restart functionality.

---

### Array Usage

#### 1D Array:
- To manage the power-ups or store ball instances in the case of multiball.

#### 2D Array:
- To represent the grid of bricks. Each element in the array corresponds to a brick and can store its state (e.g., present, destroyed, or power-up carrier).

---

### Controls

#### Keyboard Commands:
- **SPACE** restart

#### Mouse Control:
- **Mouse Movement**: Paddle moves horizontally following the `mouseX` position.

---

### Classes

#### 1. **Paddle**
   - **Instance Variables:**
     - `float y`: Vertical position of the paddle (horizontal position will follow `mouseX`).
     - `float width, height`: Dimensions of the paddle.

   - **Methods:**
     - `void display()`: Draw the paddle.
     - `void update()`: Align the paddle's horizontal position with `mouseX`.
     - `boolean hitBall(Ball b)`: Check if the ball collides with the paddle.

---

#### 2. **Ball**
   - **Instance Variables:**
     - `float x, y`: Position of the ball.
     - `float radius`: Radius of the ball.
     - `float xSpeed, ySpeed`: Speed and direction of the ball.

   - **Methods:**
     - `void display()`: Draw the ball.
     - `void move()`: Update the ball's position.
     - `void checkCollision(Paddle p, Brick[][] bricks)`: Handle collisions with the paddle and bricks.

---

#### 3. **Brick**
   - **Instance Variables:**
     - `float x, y`: Position of the brick.
     - `float Bwidth, Bheight`: Dimensions of the brick.
     - `boolean isDestroyed`: State of the brick.
     - `boolean hasPowerUp`: Whether the brick contains a power-up.

   - **Methods:**
     - `void display()`: Draw the brick.
     - `boolean hitByBall(Ball b)`: Check if the ball hits the brick and update its state.

---

#### 4. **PowerUp**
   - **Instance Variables:**
     - `float x, y`: Position of the power-up.
     - `float speed`: Speed at which it falls.
     - `String type`: Type of power-up (e.g., "enlarge", "slowBall").

   - **Methods:**
     - `void display()`: Draw the power-up.
     - `void move()`: Update the position.
     - `boolean caughtByPaddle(Paddle p)`: Check if the power-up is caught by the paddle.
