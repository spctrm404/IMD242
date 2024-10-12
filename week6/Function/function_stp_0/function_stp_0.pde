float x;
float h;
float budD;
float petalD;
int randomSeed = 0;

void setup() {
  size(800, 800);

   x = width * 0.5;
   h = height * 0.5;
   budD = 30;
   petalD = 200;
}

void mousePressed() {
  randomSeed = int(random(10000));
}

void draw() {
  randomSeed(randomSeed);
  
  background(230);

  pushStyle();
  colorMode(HSB, 360, 100, 100);
  pushMatrix();
  translate(x, height);
  strokeWeight(2);
  stroke(120, 50, 50);
  line(0, 0, 0, -h);
  pushMatrix();
  translate(0, -h);
  float petalHue = random(360);
  int petalNum = int(random(5, 13));
  float petalArcRange = 0.25 * 360 / float(petalNum);
  for (int n = 0; n < petalNum; n++) {
    float petalA = radians(-90 + n * 360 / float(petalNum));
    pushMatrix();
    rotate(petalA);
    noStroke();
    fill(petalHue, 100, 100);
    arc(0, 0,
      petalD, petalD,
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
