void setup() {
  size(640, 480);
  colorMode(RGB, 640, 480, 255);
  background(640, 480, 255);
}

void draw() {
  noStroke();
  fill(mouseX, mouseY, 0, 16);
  circle(mouseX, mouseY, 100);
}

void mousePressed() {
  background(640, 480, 255);
}
