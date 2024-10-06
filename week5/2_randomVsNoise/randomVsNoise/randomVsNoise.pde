float xPadding, xStep;
float noiseX, noiseXAdd;

void setup() {
  size(640, 480);

  xPadding = 5;
  xStep = 10;
  noiseX = 0;
  noiseXAdd = .01;

  noFill();
  stroke(0);
  strokeWeight(2);
  strokeJoin(ROUND);
}

void mousePressed() {
  loop();
}

void draw() {
  background(255);

  beginShape();
  for (float x = xPadding; x < width; x += xStep) {
    float y = map(random(1), 0, 1, 0, height * 0.5);
    vertex(x, y);
  }
  endShape();

  beginShape();
  for (float x = xPadding; x < width; x += xStep) {
    float y = map(noise(noiseX), 0, 1, height * 0.5, height);
    vertex(x, y);
    noiseX += noiseXAdd;
  }
  endShape();

  noLoop();
}
