float x ;

void setup() {
  size(640, 480);
  noStroke();
}

void draw() {
  background(0);
  fill(255);

  x = 10;
  while (x < width) {
    circle(x, height * 0.5, 5);
    x += 10;
  }
}
