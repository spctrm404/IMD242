float x, y;
float speedX, speedY;
float rad = 25;

void setup() {
  size(640, 360);
  noStroke();
  x = width * 0.5;
  y = height * 0.5;
  speedX = random(2, 5);
  if(random(1) < 0.5) {
    speedX *= -1;
  }
  speedY = 0;
}

void draw() {
  background(0);

  fill(255);
  circle(x, y, rad * 2);

  // What`s wrong?
  if(x < width) {
    x += speedX;
  } else {
    x -= speedX;
  }
  y += speedY;
}
