Particle[] p;

void setup() {
  size(800, 800);
  p = new Particle[100];

  for (int idx = 0;
    idx < p.length;
    idx++) {
    p[idx] = new Particle(
      width * 0.5, height * 0.5,
      20, 40,
      5, 10);
  }
}

void mousePressed() {
  //method1
  //for (int idx = 0;
  //  idx < p.length;
  //  idx++) {
  //  p[idx] = new Particle(
  //    width * 0.5, height * 0.5,
  //    20, 40,
  //    5, 10);
  //}

  //method2
  //for (Particle anyName : p) {
  //  anyName.init(
  //    width * 0.5, height * 0.5,
  //    20, 40,
  //    5, 10);
  //}

  //method3
  for (int idx = 0;
    idx < p.length;
    idx++) {
    p[idx].init(
      width * 0.5, height * 0.5,
      20, 40,
      5, 10);
  }
}

void draw() {
  background(255);
  for (int idx = 0;
    idx < p.length;
    idx++) {
    p[idx].update();
    p[idx].display();
  }
}
