int fruitAmt;
String fruitName;

void setup() {
  size(640, 480);
  fruitAmt = int(random(5, 100));
  fruitName = "Banana";
}

float barWidth = 24;
float x = 80;

void draw () {
  background(0);
  strokeWeight(barWidth);
  stroke(255);
  strokeCap(SQUARE);
  textAlign(CENTER);
  textSize(24);
  fill(255, 0, 0);

  line(x, height * 0.5, x, height * 0.5 - 2 * fruitAmt);
  text(fruitName, x, height * 0.5 + 30);
  text(fruitAmt, x, height * 0.5 - 2 * fruitAmt - 20);
}
