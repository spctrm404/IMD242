ArrayList<Particle> particles;
int cnt = 0;

void setup() {
  size(800, 800);
  particles = new ArrayList<Particle>();
}

void mousePressed() {
  cnt = 0;
}

void mouseReleased() {
  println("cnt: " + cnt);
  for (int n = 0; n < cnt; n++) {
    Particle aNewParticle = new Particle(
      mouseX, mouseY,
      20, 40,
      5, 10);
    particles.add(aNewParticle);
  }
}

void keyPressed() {
  if(key == 'p' || key == 'P') {
    println("total: " + particles.size());
  }
}

void draw() {
  if (mousePressed) {
    cnt++;
  }
  background(255);
  for (int idx = 0; idx < particles.size(); idx++) {
    Particle aParticle = particles.get(idx);
    aParticle.update();
    aParticle.display();
  }
}
