float tileW, tileH;

void setup() {
  size(640, 480);
  tileW = 20;
  tileH = 40;
  stroke(0);
}

void mousePressed() {
  loop();
}

void draw() {
  for (int row = 0; row < height; row += tileH) {
    for (int col = 0; col < width; col += tileW) {
      fill(random(255));
      rect(col, row, tileW, tileH);
    }
  }

  noLoop();
}
