void setup() {
  size(640, 360);
  rectMode(CENTER);
}

void draw() {
  background(0);

  if (mouseX > width * 0.5) {
    circle(width * .5, height * .5, 100);
  }

  if (mouseX < width * 0.5) {
    square(width * .5, height * .5, 100);
  }

  stroke(127);
  strokeWeight(4);
  line(width * 0.5, 0, width * 0.5, height);
}
