class Particle {
  float[] pos;
  float[] vel;
  float[] size;
  float ang;
  float angVel;

  Particle(float x, float y, float w, float h, float speed, float angSpeed) {
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

  void update(float[] force, float friction) {
    vel[0] += force[0];
    vel[1] += force[1];
    
    pos[0] += vel[0];
    pos[1] += vel[1];
    
    vel[0] *= friction;
    vel[1] *= friction;

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

  float getDiagonal() {
    float halfW = size[0] * 0.5;
    float halfH = size[1] * 0.5;
    float diagonalSq = halfW * halfW + halfH * halfH;
    float diagonal = sqrt(diagonalSq);
    return diagonal;
  }

  boolean isOutOfScreen() {
    boolean leftOut = pos[0] < 0 - getDiagonal();
    boolean rightOut =  pos[0] > width + getDiagonal();
    boolean topOut = pos[1] < 0 - getDiagonal();
    boolean bottomOut = pos[1] > height + getDiagonal();
    return leftOut || rightOut || topOut || bottomOut;
  }
}
