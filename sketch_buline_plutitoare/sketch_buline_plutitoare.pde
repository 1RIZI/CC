int num= 7;
Ball[] balls = new Ball[num];

 
  void setup(){  
    smooth(0);
 
size(1000,1000);
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball();
  }
}
 
 void draw() {
  background(255);
  textSize(20);
 
  
  for (int  i = 0; i < balls.length; i++) {
    balls[i].speed();
    balls[i].watch();
  }
}