float tileW, tileH;
int randomSeed = 0;

void setup() {
  size(800, 800);

  tileW = 40;
  tileH = 40;

  noFill();
  stroke(255);
  rectMode(CENTER);
}

void mousePressed() {
  randomSeed = int(random(11));
}

void draw() {
  randomSeed(randomSeed);

  background(0);

  for (float y = 0; y < height; y += tileH) {
    for (float x = 0; x < width; x += tileW) {
      float centerX = x + tileW * 0.5;
      float centerY = y + tileH * 0.5;
      pushMatrix();
      translate(centerX, centerY);
      rotate(radians(random(360)));
      rect(0, 0, tileW, tileH);
      line(0, 0, tileW * 0.5, 0);
      popMatrix();
    }
  }
}
