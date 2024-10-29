class Circle {
  float[] pos;
  float[] vel;
  float rad;

  Circle() {
    pos = new float[2];
    vel = new float[2];
  }

  void init(float x, float y, float rad) {
    pos[0] = x;
    pos[1] = y;
    this.rad = rad;
    vel[0] = 0;
    vel[1] = 0;
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
