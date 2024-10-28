class Ball {
  float x, y;
  float vx, vy;
  float rad;
  int colour;

  Ball(float x, float y, float speed,
    float rad, int colour) {
    this.x = x;
    this.y = y;
    float deg = random(360);
    vx = speed * cos(radians(deg));
    vy = speed * sin(radians(deg));
    this.rad = rad;
    this.colour = colour;
  }

  void update() {
    x += vx;
    y += vy;
  }

  void bound() {
    if (x < rad || x > width - rad) {
      vx *= -1;
    }
    if (y < rad || y > height - rad) {
      vy *= -1;
    }
  }

  void display() {
    noStroke();
    fill(colour);
    circle(x, y, 2 * rad);
  }
}
