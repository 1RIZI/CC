float brand, editorial, event, interactive, spacial, product, packaging;  // domenii
color minCol,maxCol;        // Colours representing temp range.

void setup()
{
  size(1000,300);
  noStroke();
  textAlign(CENTER);

  // Numar proiecte
  brand = 19;
  editorial = 15;
  spacial = 18;
  event = 15;
  packaging = 6;
  interactive = 10;
  product = 12;

  // culori.
  colorMode(HSB,360,100,100);
  minCol = color(100,70,80);   // Blue in HSB space.
  maxCol = color(340,70,80);   // Pale green in HSB space.
}

void draw()
{
  background(0,0,255);

  fill(lerpColor(minCol,maxCol,norm(brand,5,20)));
  ellipse(width*.1,height/2,brand*2,brand*2);

  fill(lerpColor(minCol,maxCol,norm(event,5,20)));
  ellipse(width*.2,height/2,event*2,event*2);

  fill(lerpColor(minCol,maxCol,norm(spacial,5,20)));
  ellipse(width*.3,height/2,spacial*2,spacial*2);

  fill(lerpColor(minCol,maxCol,norm(editorial,5,20)));
  ellipse(width*.4,height/2,editorial*2,editorial*2);

  fill(lerpColor(minCol,maxCol,norm(packaging,5,20)));
  ellipse(width*.5,height/2,packaging*2,packaging*2);
  
   fill(lerpColor(minCol,maxCol,norm(interactive,5,20)));
  ellipse(width*.6,height/2,interactive*2,interactive*2);
  
fill(lerpColor(minCol,maxCol,norm(product,5,20)));
  ellipse(width*.7,height/2,product*2,product*2);

  // Draw text labels.
  fill(0,0,0);
  text("RIZI Projects 2013-2017",width*.5,20);
  text("Branding",width*.1,height-10);
  text("Event",width*.2,height-10);
  text("Spacial",width*.3,height-10);
  text("Editorial",width*.4,height-10);
  text("Packaging",width*.5,height-10);
   text("Interactive",width*.6,height-10);
    text("Product",width*.7,height-10);

  noLoop();    // Draw once only.
}