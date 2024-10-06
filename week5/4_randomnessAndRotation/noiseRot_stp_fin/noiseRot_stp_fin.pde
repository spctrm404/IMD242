float tileW, tileH;
int noiseSeed = 0;
float mult;

void setup() {
  size(800, 800);

  tileW = 40;
  tileH = 40;
  mult = 0.001;

  noFill();
  stroke(255);
  rectMode(CENTER);
}

void mousePressed() {
  noiseSeed = int(random(11));
}

void draw() {
  noiseSeed(noiseSeed);

  background(0);

  for (float y = 0; y < height; y += tileH) {
    for (float x = 0; x < width; x += tileW) {
      float centerX = x + tileW * 0.5;
      float centerY = y + tileH * 0.5;
      pushMatrix();
      translate(centerX, centerY);
      float noiseAngle = map(noise(centerX * mult, centerY * mult), 0, 1, 0, 360);
      rotate(radians(noiseAngle));
      rect(0, 0, tileW, tileH);
      line(0, 0, tileW * 0.5, 0);
      popMatrix();
    }
  }
}
