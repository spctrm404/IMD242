float[] ballX, ballY;
float[] ballVx, ballVy;
float ballRad;
int ballNum = 500;

void setup() {
  size(600, 400);
  ballX = new float[ballNum];
  ballY = new float[ballNum];
  ballVx = new float[ballNum];
  ballVy = new float[ballNum];
  ballRad = 15;

  for (int idx = 0; idx < ballNum; idx++) {
    ballX[idx] = width * 0.5;
    ballY[idx] = height * 0.5;
    float randomDeg = random(360);
    float speed = 5;
    ballVx[idx] = speed * cos(radians(randomDeg));
    ballVy[idx] = speed * sin(radians(randomDeg));
  }
}

void draw() {
  for (int idx = 0; idx < ballNum; idx++) {
    ballX[idx] += ballVx[idx];
    ballY[idx] += ballVy[idx];

    if (ballX[idx] < 0 + ballRad
      || ballX[idx] > width - ballRad) {
      ballVx[idx] *= -1;
    }
    if (ballY[idx] < 0 + ballRad
      || ballY[idx] > height - ballRad) {
      ballVy[idx] *= -1;
    }
  }

  background(255);
  noStroke();
  fill(255, 0, 0);
  for (int idx = 0; idx < ballNum; idx++) {
    circle(ballX[idx], ballY[idx], 2 * ballRad);
  }
}
