class Particle {
  float[] pos;
  float[] vel;
  float[] size;
  float ang;
  float angVel;

  Particle(float x, float y,
    float w, float h,
    float speed, float angSpeed) {
    pos = new float[2];
    vel = new float[2];
    size = new float[2];
    pos[0] = x;
    pos[1] = y;
    size[0] = w;
    size[1] = h;
    float randomDir = radians(random(360));
    vel[0] = speed * cos(randomDir);
    vel[1] = speed * sin(randomDir);
    ang = radians(random(360));
    angVel = radians(angSpeed);
  }

  void update() {
    pos[0] += vel[0];
    pos[1] += vel[1];

    ang += angVel;
  }

  void display() {
    push();
    rectMode(CENTER);
    translate(pos[0], pos[1]);
    rotate(ang);
    stroke(0);
    noFill();
    rect(0, 0, size[0], size[1]);
    pop();
  }
}
