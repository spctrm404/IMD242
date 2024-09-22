float x, y;
float speedX, speedY;

void setup() {
  size(640, 360);
  noStroke();
  x = width * 0.5;
  y = height * 0.5;
  speedX = random(2, 5);
  speedY = random(2, 5);
}

void draw() {
  background(0);

  fill(255);

  circle(x, y, 50);

  x += speedX;
  y += speedY;

  if (x >= width || x <= 0) {
    speedX *= -1;
  }
  if (y >= height || y <= 0) {
    speedY *= -1;
  }
}
