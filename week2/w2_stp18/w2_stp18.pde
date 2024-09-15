void setup() {
  size(800, 600);
  background(82, 34, 88);
}

void draw() {
  noFill();
  stroke(217, 95, 89, 16);
  circle(width / 2, height / 2, mouseX);
}

void mousePressed() {
  background(82, 34, 88);
}
