ArrayList<Particle> particles;
int cnt = 0;
float[] gravity = {0, 0.5};
float friction = 0.95;

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
      random(5, 20), random(-15, 15));
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
  for(int idx = particles.size() - 1; idx >= 0; idx--) {
    Particle aParticle = particles.get(idx);
    aParticle.update(gravity, friction);
    if(aParticle.isOutOfScreen()) {
      particles.remove(idx);
    }
  }
  for (int idx = 0; idx < particles.size(); idx++) {
    Particle aParticle = particles.get(idx);
    aParticle.display();
  }
}
