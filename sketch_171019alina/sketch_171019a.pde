PImage img;
int smallPoint, largePoint, bogdan; 

void setup() {
  size(1920, 1200);
  img = loadImage("./grid.jpg");
  smallPoint = 10;
  largePoint = 100;
  bogdan = 10;
  
  imageMode(CENTER);
  noStroke();
  background(0);
}

void draw() { float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pix = img.get(x, y);
  fill(pix, 70);
  rect(x, y, pointillize, pointillize);}
  
  