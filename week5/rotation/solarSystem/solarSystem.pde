float earthR, earthRot, earthRotAdd, earthRev, earthRevAdd, earthDistSun;
float moonR, moonRot, moonRotAdd, moonRev, moonRevAdd, moonDistEarth;
float sunR, sunRot, sunRotAdd;

void setup() {
  size(800, 800);

  earthR = 20;
  moonR = 10;
  sunR = 80;
  earthDistSun = 250;
  moonDistEarth = 100;
  earthRotAdd = -100;
  earthRevAdd = earthRotAdd / 365.25;
  moonRotAdd = earthRotAdd / 27.3;
  moonRevAdd = earthRotAdd / 27.3;
  sunRotAdd = earthRotAdd / 27;
  earthRot = 0;
  earthRev = 0;
  moonRot = 0;
  moonRev = 0;
  sunRot = 0;

  rectMode(CENTER);
  textSize(18);
}

void draw() {
  background(0);

  // sun
  pushMatrix();
  // come to screen ceter
  translate(width * 0.5, height * 0.5);
  // and rotate
  rotate(radians(sunRot));
  noStroke();
  fill(255, 0, 0);
  square(0, 0, 2 * sunR);
  fill(255);
  circle(sunR, 0, 10);
  popMatrix();

  // earth
  pushMatrix();
  // start from sun
  translate(width * 0.5, height * 0.5);
  // rotate to express revolute
  rotate(radians(earthRev));
  pushMatrix();
  // then come to earth center
  translate(earthDistSun, 0);
  // and rotate (with compensation)
  rotate(radians(-earthRev));
  rotate(radians(earthRot));
  noStroke();
  fill(0, 0, 255);
  square(0, 0, 2 * earthR);
  fill(255);
  circle(earthR, 0, 10);
  popMatrix();
  popMatrix();

  // earth
  pushMatrix();
  // start from sun
  translate(width * 0.5, height * 0.5);
  // rotate to express revolute
  rotate(radians(earthRev));
  pushMatrix();
  // then come to earth center
  translate(earthDistSun, 0);
  // rotate to express revolute (with compensation)
  rotate(radians(-earthRev));
  rotate(radians(moonRev));
  pushMatrix();
  // then come to moon center
  translate(moonDistEarth, 0);
  // and rotate (with compensation)
  rotate(radians(-moonRev));
  rotate(radians(moonRot));
  noStroke();
  fill(255, 255, 0);
  square(0, 0, 2 * moonR);
  fill(255);
  circle(moonR, 0, 10);
  popMatrix();
  popMatrix();
  popMatrix();

  noFill();
  stroke(255);
  pushMatrix();
  translate(width * 0.5, height * 0.5);
  circle(0, 0, 2 * earthDistSun);
  popMatrix();

  pushMatrix();
  translate(width * 0.5, height * 0.5);
  rotate(radians(earthRev));
  pushMatrix();
  translate(earthDistSun, 0);
  circle(0, 0, 2 * moonDistEarth);
  popMatrix();
  popMatrix();

  noStroke();
  fill(255);
  text("Earth Rot: " + int(earthRot / 360), 5, 20);
  text("Earth Rev: " + int(earthRev / 360), 5, 40);
  text("Moon Rot: " + int(moonRot / 360), 5, 60);
  text("Moon Rev: " + int(moonRev / 360), 5, 80);
  text("Sun Rot: " + int(sunRot / 360), 5, 100);

  sunRot += sunRotAdd;
  earthRot += earthRotAdd;
  earthRev += earthRevAdd;
  moonRot += moonRotAdd;
  moonRev += moonRevAdd;
}
