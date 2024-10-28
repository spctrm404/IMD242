float ballX, ballY;
float ballVx, ballVy;
float ballRad;

void setup() {
  size(600, 400);
  ballX = width * 0.5;
  ballY = height * 0.5;
  float randomDeg = random(360);
  float speed = 5;
  ballVx = speed * cos(radians(randomDeg));
  ballVy = speed * sin(radians(randomDeg));
  ballRad = 20;
}

void draw() {
  ballX += ballVx;
  ballY += ballVy;
  
  if (ballX < 0 + ballRad
    || ballX > width - ballRad) {
    ballVx *= -1;
  }
  if (ballY < 0 + ballRad
    || ballY > height - ballRad) {
    ballVy *= -1;
  }

  background(255);
  noStroke();
  fill(255, 0, 0);
  circle(ballX, ballY, 2 * ballRad);
}
