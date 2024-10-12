int fruitAmt;
int fruitAmt2;
int fruitAmt3;
String fruitName;
String fruitName2;
String fruitName3;

void setup() {
  size(640, 480);
  fruitAmt = int(random(5, 100));
  fruitAmt2 = int(random(5, 100));
  fruitAmt3 = int(random(5, 100));
  fruitName = "Banana";
  fruitName2 = "Mango";
  fruitName3 = "Melon";
}

float barGap = 88;
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

  strokeWeight(barWidth);
  stroke(255);
  strokeCap(SQUARE);
  textAlign(CENTER);
  textSize(24);
  fill(255, 0, 0);

  line(x + barGap, height * 0.5, x + barGap, height * 0.5 - 2 * fruitAmt2);
  text(fruitName2, x + barGap, height * 0.5 + 30);
  text(fruitAmt2, x + barGap, height * 0.5 - 2 * fruitAmt2 - 20);

  strokeWeight(barWidth);
  stroke(255);
  strokeCap(SQUARE);
  textAlign(CENTER);
  textSize(24);
  fill(255, 0, 0);

  line(x + barGap * 2, height * 0.5, x + barGap * 2, height * 0.5 - 2 * fruitAmt3);
  text(fruitName3, x + barGap * 2, height * 0.5 + 30);
  text(fruitAmt3, x + barGap * 2, height * 0.5 - 2 * fruitAmt3 - 20);
}
