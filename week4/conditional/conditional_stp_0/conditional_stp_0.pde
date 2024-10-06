float x, y;
float speedX, speedY;
float rad = 25;

void setup() {
  size(640, 360);
  noStroke();
  x = width * 0.5;
  y = height * 0.5;
  speedX = random(2, 5);
  speedY = 0;
}

void draw() {
  background(0);

  fill(255);
  circle(x, y, rad * 2);

  x += speedX;
  y += speedY;
}
