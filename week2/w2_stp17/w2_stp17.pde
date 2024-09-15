void setup() {
  size(400, 300);
  colorMode(RGB, width, height, 255);
  background(width, height, 255);
}

void draw() {
  noStroke();
  fill(mouseX, mouseY, 0, 16);
  circle(mouseX, mouseY, 100);
}

void mousePressed() {
  background(height, height, 255);
}
