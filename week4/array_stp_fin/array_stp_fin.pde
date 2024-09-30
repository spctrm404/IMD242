int[] fruitAmt = new int[5];
String[] fruitNames = {"Mango", "Strawberry", "Kiwi", "Plum", "Banana"};

void setup() {
  size(640, 480);

  for (int idx = 0; idx < fruitAmt.length; idx++) {
    fruitAmt[idx] = int(random(5, 100));
  }
  
  
}

float barWidth = 24;
float graphBegin = 80;
float graphGap = 120;

void draw () {
  background(0);
  strokeWeight(barWidth);
  stroke(255);
  strokeCap(SQUARE);
  textAlign(CENTER);
  textSize(24);
  fill(255);
  
  for (int idx = 0; idx < fruitAmt.length; idx++) {
    float x = graphBegin + idx * graphGap;
    line(x, height * 0.5, x, height * 0.5 - fruitAmt[idx]);
    text(fruitNames[idx], x, height * 0.5 + 50);
    text(fruitAmt[idx], x, height * 0.5 - fruitAmt[idx] - 16);
  }
}
