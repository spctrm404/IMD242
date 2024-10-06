float tileW, tileH;
int randomSeed = 0;

void setup() {
  size(640, 480);
  tileW = 20;
  tileH = 40;
  stroke(0);
}

void mousePressed() {
  randomSeed = int(random(3));
}

void draw() {
  randomSeed(randomSeed);
  for (int row = 0; row < height; row += tileH) {
    for (int col = 0; col < width; col += tileW) {
      fill(random(255));
      rect(col, row, tileW, tileH);
    }
  }
}
