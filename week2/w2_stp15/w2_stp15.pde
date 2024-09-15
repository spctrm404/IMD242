void setup() {
  size(640, 480);
  colorMode(RGB, 640, 480, 255);
}

void draw() {
  noStroke();
  fill(255, 130, 37, 16);
  circle(mouseX, mouseY, 100);
}

void mousePressed() {
  background(mouseX, mouseY, 0);
}