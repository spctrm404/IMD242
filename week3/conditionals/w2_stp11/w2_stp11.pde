void setup() {
  size(640, 360);
}

void draw() {
  background(0);

  stroke(127);
  strokeWeight(4);
  line(width * 0.5, 0, width * 0.5, height);

  if (mouseX > width * 0.5) {
    background(255);
  }
}
