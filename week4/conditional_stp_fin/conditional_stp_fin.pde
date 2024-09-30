float x, y;
float speedX, speedY;
float rad = 25;
float r, g, b;
boolean stop = false;

void setup() {
  size(640, 360);
  noStroke();
  x = width * 0.5;
  y = height * 0.5;
  speedX = random(2, 5);
  speedY = random(2, 5);
  r = random(255);
  g = random(255);
  b = random(255);
}

void keyPressed() {
  if(key == 'r' || key == 'R') {
  stop = !stop;
  }
}

void draw() {
  background(0);

  fill(r, g, b);
  circle(x, y, rad * 2);

  if (!mousePressed) {
    if (!stop) {
      x += speedX;
      y += speedY;
    }
    if (x >= width - rad || x <= 0 + rad) {
      speedX *= -1;
      r = random(255);
      g = random(255);
      b = random(255);
    }
    if (y >= height - rad || y <= 0 + rad) {
      speedY *= -1;
      r = random(255);
      g = random(255);
      b = random(255);
    }
  }
}
