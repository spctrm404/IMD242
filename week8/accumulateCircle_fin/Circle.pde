class Circle {
  float[] pos;
  float[] vel;
  float rad;

  Circle(float x, float y, float rad) {
    pos = new float[2];
    vel = new float[2];
    init(x, y, rad);
  }

  void init(float x, float y, float rad) {
    pos[0] = x;
    pos[1] = y;
    this.rad = rad;
  }

  void update(float[] force, float friction) {
    for (int idx = 0; idx < 2; idx++) {
      vel[idx] += force[idx];
      pos[idx] += vel[idx];
      vel[idx] *= friction;
    }
  }

  void boundary(float friction) {
    if (pos[0] < rad || pos[0] > width - rad) {
      vel[0] *= -friction;
      if (pos[0] < rad) {
        pos[0] = rad;
      } else {
        pos[0] = width - rad;
      }
    }
    //if (pos[1] < rad || pos[1] > height - rad) {
    if (pos[1] > height - rad) {
      vel[1] *= -friction;
      //if (pos[1] < rad) {
      //  pos[1] = rad;
      //} else {
      pos[1] = height - rad;
      //}
    }
  }

  void collide(Circle other, float friction) {
    float critDist = rad + other.rad;
    float dx = other.pos[0] - pos[0] ;
    float dy = other.pos[1] - pos[1];
    float dist = sqrt(dx * dx + dy * dy);
    if (dist < critDist) {
      float[] normalPos = {dx / dist, dy / dist};
      float overlap = critDist - dist;
      pos[0] -= overlap * normalPos[0];
      pos[1] -= overlap * normalPos[1];
      other.pos[0] += overlap * normalPos[0];
      other.pos[1] += overlap * normalPos[1];
      float[] normalVel = {other.vel[0] - vel[0], other.vel[1] - vel[1]};
      float dotProduct = normalVel[0] * normalPos[0]
        + normalVel[1] * normalPos[1];
      vel[0] += dotProduct * normalPos[0] * friction;
      vel[1] += dotProduct * normalPos[1] * friction;
      other.vel[0] -= dotProduct * normalPos[0] * friction;
      other.vel[1] -= dotProduct * normalPos[1] * friction;
    }
  }

  void display() {
    push();
    translate(pos[0], pos[1]);
    noStroke();
    fill(0);
    circle(0, 0, 2 * rad);
    fill(255, 0, 0);
    circle(0, 0, 10);
    pop();
  }
}
