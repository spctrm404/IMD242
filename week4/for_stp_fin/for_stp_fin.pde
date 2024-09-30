void setup() {
  size(640, 480);
  noStroke();
}

void draw() {
  background(0);
  fill(255);

  for (int x = 10; x < width; x+=10) {
    circle(x, height * 0.5, 5);
  }
}
