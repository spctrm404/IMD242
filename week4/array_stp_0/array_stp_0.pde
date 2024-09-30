int fruitAmt;
String fruitNames = "Mango";

void setup() {
  size(640, 480);
  fruitAmt = int(random(5, 100));
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
  fill(255);

  line(x, height * 0.5, x, height * 0.5 - fruitAmt);
  text(fruitNames, x, height * 0.5 + 50);
  text(fruitAmt, x, height * 0.5 - fruitAmt - 16);
}
