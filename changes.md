## Phase 1: Feedback & Changes

#### 3. **Brick** 
   - **Instance Variables:**
     - `float x, y`: Position of the brick.
     - `float width, height`: Dimensions of the brick.
     - `boolean isDestroyed`: State of the brick.
     - `boolean hasPowerUp`: Whether the brick contains a power-up.

   - **Methods:**
     - `void display()`: Draw the brick.
     - `boolean hitByBall(Ball b)`: Check if the ball hits the brick and update its state.

##### Changes: Instead of boolean isDestroyed, simply set indices to 'null' upon collision with a ball. 
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

##### Changes: "How will we implement sound effects and music?" By accessing Processing's Sound library. Importing the library, using the method 'play()' with an audio file. 
---
