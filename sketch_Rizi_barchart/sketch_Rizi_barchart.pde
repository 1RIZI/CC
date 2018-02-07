int[] numbers = {19,15,18,15,6,10,12};
 

void setup() {
  size(600, 400);
  background(255);
 colorMode(HSB, 360, 100, 100);
  smooth();
  noStroke();
  

  for (int i = 0; i < numbers.length; i++) {
    int n = numbers[i];

    float x = map(i, 0, numbers.length, 0, width);
    float h = map(n, 0, max(numbers), 0, height);
    float c = map(n, 0, max(numbers), 0, 360);
    float y = height - h;

   fill(c,100,100);
    rect(x, y, 60, h);
  }
}