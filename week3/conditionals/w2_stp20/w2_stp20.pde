float x = 0;
float speedX = 5;

void setup() {
  size(640, 360);
  noStroke();
}

void draw() {
  background(0);

  fill(255);

  circle(x, height * 0.5, 50);

  x += speedX;

  if (x >= width) {
    speedX = -5;
  }
}
