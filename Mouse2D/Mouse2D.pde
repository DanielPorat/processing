float x = 200;  // Starting X position
float y = 200;  // Starting Y position
float speed = 5;  // Speed of movement

void setup() {
  size(400, 400);  // Set the window size
}

void draw() {
  background(255);  // Clear the screen
  
  // Draw the character (a circle)
  ellipse(x, y, 50, 50);
  
  // Move the character based on key presses
  if (keyPressed) {
    if (keyCode == LEFT) {
      x -= speed;  // Move left
    }
    if (keyCode == RIGHT) {
      x += speed;  // Move right
    }
    if (keyCode == UP) {
      y -= speed;  // Move up
    }
    if (keyCode == DOWN) {
      y += speed;  // Move down
    }
  }
}
