int randomSeed = int(random(10000));
float FLOWER_A_RANGE = 10;

void setup() {
  size(800, 800);
}

void mousePressed() {
  randomSeed = int(random(10000));
}

void draw() {
  randomSeed(randomSeed);
  background(230);
  for (int n = 0; n < 10; n++) {
    flower(random(0.1 * width, 0.9 * width), random(height * 0.25, height * 0.75), random(20, 30), random(50, 200));
  }
}

void flower(float x, float h, float budD, float petalD) {
  pushStyle();
  colorMode(HSB, 360, 100, 100);
  pushMatrix();
  translate(x, height);
  rotate(radians(random(-FLOWER_A_RANGE, FLOWER_A_RANGE)));
  strokeWeight(2);
  stroke(120, 50, 50);
  line(0, 0, 0, -h);
  pushMatrix();
  translate(0, -h);
  float petalHue = random(360);
  int petalNum = int(random(5, 13));
  float petalArcRange = 0.25 * 360 / float(petalNum);
  petalArcRange *= random(0.9, 1.1);
  for (int n = 0; n < petalNum; n++) {
    float petalRandDMult = random(0.95, 1.05);
    float petalA = radians(-90 + n * 360 / float(petalNum));
    pushMatrix();
    rotate(petalA);
    noStroke();
    fill(petalHue, 100, 100);
    arc(0, 0,
      petalD * petalRandDMult, petalD * petalRandDMult,
      radians(-petalArcRange), radians(petalArcRange),
      PIE);
    popMatrix();
  }
  float budHue = random(30, 70);
  fill(budHue, 100, 90);
  circle(0, 0, budD);
  popMatrix();
  popMatrix();
  popStyle();
}
