float centerX, centerY;
float rad;

void setup() {
  size(800, 800);

  centerX = width * 0.5;
  centerY = height * 0.5;
  rad = min(width, height);
  rad *= 0.5;
  rad *= 3 / 4.0;

  noFill();
}

void draw() {
  background(0);
  stroke(255);
  int nGon = int(map(abs(mouseX - width * 0.5), 0, width * 0.5, 3, 9));
  pushMatrix();
  translate(centerX, centerY);
  rotate(atan2(mouseY - height * 0.5, mouseX - width * 0.5));
  beginShape();
  for (int n = 0; n < nGon; n++) {
    float angle = -90 + 360 / nGon * n;
    float x = rad * cos(radians(angle));
    float y = rad * sin(radians(angle));
    vertex(x, y);
  }
  line(0, 0, 0, -rad);
  endShape(CLOSE);
  popMatrix();
}
