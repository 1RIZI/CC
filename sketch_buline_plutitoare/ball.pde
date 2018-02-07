 class Ball{
   int[] numbers = {19,15,18,15,6,10,12};
       
  float x;
  float y ;
  float r ;
  float speedx;
  float speedy;
  float R ;
  float g ;
float b;

   Ball(){
       
   x= random(30,1000);
   y = random(30,1000);
   r = 150;
   speedx =random( -3,3);
   speedy = random(-3,3);
   R = random(255);
   g = random(255);
   b = random(255);;
    }
   
   void speed(){
     
  x= x+ speedx;
  y= y + speedy;
  
  
  if(( x > width -r)) {
   x = width -r;
      speedx *= -1;
  
  
  }
  
  else if((x < r)) {
  x = r;
  speedx *= -1;
  
 }
 
 if(( y > height -r)) {
   y = height - r;
   speedy *= -1;
    
   
  }
  else if((y < r)) {
  y=r;
  speedy *= -1;
 
  }

    
 }
 
  
  void watch(){
    noStroke();
    fill(R,g,b);
    ellipse(x,y,r,r);
  }
 }