// Stats
int[] BRAND;
int[] EDITORIAL;
int[] EVENT;
int[] INTERACTIVE;
int[] SPATIAL;
int[] PRODUCT;

color Sunday = color(240, 56, 56, 15);
color UrbanEye = color(201, 193, 144, 15);
color Urbanmarkers = color(44, 102, 232, 15);
color Ento = color(51, 188, 21, 15);
color Hiphip = color(229, 220, 37, 15);
color Majoritas = color(141, 191, 222, 15);
color Soapmill = color(232, 54, 191, 15);
color MKBT = color(157, 232, 54, 15);
color Timishort = color(167, 95, 52, 15);
color Minorities = color(108, 104, 102, 15);
color Luxten = color(140, 57, 193, 15);
color Alert = color(23, 22, 23, 15);
color PEK = color(17, 139, 109, 15);
color Awake = color(99, 224, 245, 15);
color Roz = color(234, 192, 149, 15);
color Tesatori = color(36, 34, 103, 15);
color Precon = color(180, 180, 180, 15);
color Bere = color(255, 183, 235, 15);



// Booleans
boolean select = false; //type select


void setup() {
  size(600, 600);
 background(250,249,237);

  fill(0);
  smooth();
  textSize(16);
  noStroke();
  fill(255);

  //Type Menu BG
  rect(0, 0, 110, height);

  //Hex lines
  stroke(#D1D0CA);
  line(350, 50, 350, 330); // center y
  line(230, 260, 470, 120); // /
  line(230, 120, 470, 260); // \
  stroke(88, 87, 80);
  strokeWeight(3.5);
  //Hexagon
  line(230, 260, 230, 120); // left edge
  line(230, 120, 350, 50);  // up left edge
  line(350, 50, 470, 120);  // up right edge
  line(470, 120, 470, 260); // right edge
  line(470, 260, 350, 330); // low right edge
  line(350, 330, 230, 260); // low left edge


  //Title
  fill(0, 0, 0);
  text("RIZI PROJECTS 2013-2017", 226, 500);

  //STATS on hexagon
  textSize(12);
  fill(0, 0, 0);
  text("BRAND", 330, 40);         //Branding
  text("EDITORIAL", 478, 120);    //Editorial
  text("EVENT", 480, 270);   //Event
  text("INTERACTIVE", 310, 350);    //Interactive
  text("SPATIAL", 170, 270);    //Spatial
  text("PRODUCT", 165, 120);     //Product

  //TYPE List
  textSize(14);
    fill(0, 0, 0);
  text("Sunday", 10, 35);
  text("UrbanEye", 10, 55);
  text("Urbanmarkers", 10, 75);
  text("Ento", 10, 95);
  text("Hiphip", 10, 115);
  text("Majoritas", 10, 135);
  text("Soapmill", 10, 155);
  text("MKBT", 10, 175);
  text("Timishort", 10, 195);
  text("Minorities", 10, 215);
  text("Luxten", 10, 235);
  text("Alert", 10, 255);
  text("PEK", 10, 275);
  text("Awake", 10, 295);
  text("Roz", 10, 315);
  text("Tesatori", 10, 335);
  text("Precon", 10, 355);
  text("Bere", 10, 375);

  //Clear "button"
  text("Clear", 558, 392);


  //Load the data

  String[] stats = loadStrings("AllTypeAverageStats.txt");
  println("Lines Array " + stats.length);

  //Individual Stats
  BRAND = new int[stats.length];
  EDITORIAL = new int[stats.length];
  EVENT = new int[stats.length];
  INTERACTIVE = new int[stats.length];
  SPATIAL = new int[stats.length];
  PRODUCT = new int[stats.length];


  //Parse Data
  for (int i=0; i<stats.length; i++) {
    String[] pieces = split(stats[i], ",");

    BRAND[i] = int(pieces[0]);
    EDITORIAL[i] = int(pieces[1]);
    EVENT[i] = int(pieces[2]);
    INTERACTIVE[i] = int(pieces[3]);
    SPATIAL[i] = int(pieces[4]);
    PRODUCT[i] = int(pieces[5]);
  }

  //Tests
  println("Data Loaded: "+BRAND.length+" entries.");
  println(BRAND); 
  println(stats[0] + "," + stats[1]); 
  println(EVENT[10]);
}


void clearHex() {
  background(250, 249, 237);
  fill(0);
  smooth();
  textSize(16);
  noStroke();
  fill(255);

  //Type Menu BG
  rect(0, 0, 110, height);


  //Hex lines
  stroke(#D1D0CA);
  line(350, 50, 350, 330); // center y
  line(230, 260, 470, 120); // /
  line(230, 120, 470, 260); // \
  stroke(88, 87, 80);
  strokeWeight(3.5);
  //Hexagon
  line(230, 260, 230, 120); // left edge
  line(230, 120, 350, 50);  // up left edge
  line(350, 50, 470, 120);  // up right edge
  line(470, 120, 470, 260); // right edge
  line(470, 260, 350, 330); // low right edge
  line(350, 330, 230, 260); // low left edge



  //Title
  fill(88, 87, 80);
  text("RIZI PROJECTS 2013-2017", 226, 500);

  //STATS on hexagon
  textSize(12);
  text("BRAND", 330, 40);         //Branding
  text("EDITORIAL", 478, 120);    //Editorial
  text("EVENT", 480, 270);   //Event
  text("INTERACTIVE", 310, 350);    //Interactive
  text("SPATIAL", 170, 270);    //Spatial
  text("PRODUCT", 165, 120);     //Product

  //TYPE List
  textSize(14);
  text("Sunday", 10, 35);
  text("UrbanEye", 10, 55);
  text("Urbanmarkers", 10, 75);
  text("Ento", 10, 95);
  text("Hiphip", 10, 115);
  text("Majoritas", 10, 135);
  text("Soapmill", 10, 155);
  text("MKBT", 10, 175);
  text("Timishort", 10, 195);
  text("Minorities", 10, 215);
  text("Luxten", 10, 235);
  text("Alert", 10, 255);
  text("PEK", 10, 275);
  text("Awake", 10, 295);
  text("Roz", 10, 315);
  text("Tesatori", 10, 335);
  text("Precon", 10, 355);
  text("Bere", 10, 375);

  //Clear "button"
  text("Clear", 558, 392);
  strokeWeight(1);
}

void drawSunday() {

 

  float value = BRAND[0];
  float BRANDmap = map(BRAND[0], 0, 130, 180, 50);


  float value2 = EDITORIAL[0];
  float EDITORIALmapy = map(EDITORIAL[0], 0, 130, 180, 120);

  float value21 = EDITORIAL[0];
  float EDITORIALmapx = map(EDITORIAL[0], 0, 130, 350, 470);

  float value3 = EVENT[0];
  float EVENTmapy = map(EVENT[0], 0, 130, 180, 260);

  float value4 = EVENT[0];
  float EVENTmapx = map(EVENT[0], 0, 130, 350, 470);

  float value5 = INTERACTIVE[0];
  float INTERACTIVEmap = map(INTERACTIVE[0], 0, 130, 180, 330);

  float value6 = SPATIAL[0];
  float SPATIALmapy = map(SPATIAL[0], 0, 130, 180, 260);

  float value7 = SPATIAL[0];
  float SPATIALmapx = map(SPATIAL[0], 0, 130, 350, 230);

  float value8 = PRODUCT[0];
  float PRODUCTmapy = map(PRODUCT[0], 0, 130, 180, 120);

  float value9 = SPATIAL[0];
  float PRODUCTmapx = map(PRODUCT[0], 0, 130, 350, 230);


  noStroke();
  fill(Sunday);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);

  text("Sunday", 10, 35);
}

void drawUrbanEye() {

  float value = BRAND[1];
  float BRANDmap = map(BRAND[1], 0, 130, 180, 50);

  float value2 = EDITORIAL[1];
  float EDITORIALmapy = map(EDITORIAL[1], 0, 130, 180, 120);

  float value21 = EDITORIAL[1];
  float EDITORIALmapx = map(EDITORIAL[1], 0, 130, 350, 470);

  float value3 = EVENT[1];
  float EVENTmapy = map(EVENT[1], 0, 130, 180, 260);

  float value4 = EVENT[1];
  float EVENTmapx = map(EVENT[1], 0, 130, 350, 470);

  float value5 = INTERACTIVE[1];
  float INTERACTIVEmap = map(INTERACTIVE[1], 0, 130, 180, 330);

  float value6 = SPATIAL[1];
  float SPATIALmapy = map(SPATIAL[1], 0, 130, 180, 260);

  float value7 = SPATIAL[1];
  float SPATIALmapx = map(SPATIAL[1], 0, 130, 350, 230);

  float value8 = PRODUCT[1];
  float PRODUCTmapy = map(PRODUCT[1], 0, 130, 180, 120);

  float value9 = SPATIAL[1];
  float PRODUCTmapx = map(PRODUCT[1], 0, 130, 350, 230);


  noStroke();
  fill(UrbanEye);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);
  text("UrbanEye", 10, 55);
}

void drawUrbanmarkers() {


  float value = BRAND[2];
  float BRANDmap = map(BRAND[2], 0, 130, 180, 50);



  float value2 = EDITORIAL[2];
  float EDITORIALmapy = map(EDITORIAL[2], 0, 130, 180, 120);

  float value21 = EDITORIAL[2];
  float EDITORIALmapx = map(EDITORIAL[2], 0, 130, 350, 470);

  float value3 = EVENT[2];
  float EVENTmapy = map(EVENT[2], 0, 130, 180, 260);

  float value4 = EVENT[2];
  float EVENTmapx = map(EVENT[2], 0, 130, 350, 470);

  float value5 = INTERACTIVE[2];
  float INTERACTIVEmap = map(INTERACTIVE[2], 0, 130, 180, 330);

  float value6 = SPATIAL[2];
  float SPATIALmapy = map(SPATIAL[2], 0, 130, 180, 260);

  float value7 = SPATIAL[2];
  float SPATIALmapx = map(SPATIAL[2], 0, 130, 350, 230);

  float value8 = PRODUCT[2];
  float PRODUCTmapy = map(PRODUCT[2], 0, 130, 180, 120);

  float value9 = SPATIAL[2];
  float PRODUCTmapx = map(PRODUCT[2], 0, 130, 350, 230);


  noStroke();
  fill(Urbanmarkers);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);
  text("Urbanmarkers", 10, 75);
}

void drawEnto() {


  float value = BRAND[3];
  float BRANDmap = map(BRAND[3], 0, 115, 180, 50);



  float value2 = EDITORIAL[3];
  float EDITORIALmapy = map(EDITORIAL[3], 0, 115, 180, 120);

  float value21 = EDITORIAL[3];
  float EDITORIALmapx = map(EDITORIAL[3], 0, 115, 350, 470);

  float value3 = EVENT[3];
  float EVENTmapy = map(EVENT[3], 0, 115, 180, 260);

  float value4 = EVENT[3];
  float EVENTmapx = map(EVENT[3], 0, 115, 350, 470);

  float value5 = INTERACTIVE[3];
  float INTERACTIVEmap = map(INTERACTIVE[3], 0, 115, 180, 330);

  float value6 = SPATIAL[3];
  float SPATIALmapy = map(SPATIAL[3], 0, 115, 180, 260);

  float value7 = SPATIAL[3];
  float SPATIALmapx = map(SPATIAL[3], 0, 115, 350, 230);

  float value8 = PRODUCT[3];
  float PRODUCTmapy = map(PRODUCT[3], 0, 115, 180, 120);

  float value9 = SPATIAL[3];
  float PRODUCTmapx = map(PRODUCT[3], 0, 115, 350, 230);


  noStroke();
  fill(Ento);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);
  text("Ento", 10, 95);
}

void drawHiphip() {


  float value = BRAND[4];
  float BRANDmap = map(BRAND[4], 0, 115, 180, 50);



  float value2 = EDITORIAL[4];
  float EDITORIALmapy = map(EDITORIAL[4], 0, 115, 180, 120);

  float value21 = EDITORIAL[4];
  float EDITORIALmapx = map(EDITORIAL[4], 0, 115, 350, 470);

  float value3 = EVENT[4];
  float EVENTmapy = map(EVENT[4], 0, 115, 180, 260);

  float value4 = EVENT[4];
  float EVENTmapx = map(EVENT[4], 0, 115, 350, 470);

  float value5 = INTERACTIVE[4];
  float INTERACTIVEmap = map(INTERACTIVE[4], 0, 115, 180, 330);

  float value6 = SPATIAL[4];
  float SPATIALmapy = map(SPATIAL[4], 0, 115, 180, 260);

  float value7 = SPATIAL[4];
  float SPATIALmapx = map(SPATIAL[4], 0, 115, 350, 230);

  float value8 = PRODUCT[4];
  float PRODUCTmapy = map(PRODUCT[4], 0, 115, 180, 120);

  float value9 = SPATIAL[4];
  float PRODUCTmapx = map(PRODUCT[4], 0, 115, 350, 230);


  noStroke();
  fill(Hiphip);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);
  text("Hiphip", 10, 115);
}

void drawMajoritas() {


  float value = BRAND[5];
  float BRANDmap = map(BRAND[5], 0, 115, 180, 50);



  float value2 = EDITORIAL[5];
  float EDITORIALmapy = map(EDITORIAL[5], 0, 115, 180, 120);

  float value21 = EDITORIAL[5];
  float EDITORIALmapx = map(EDITORIAL[5], 0, 115, 350, 470);

  float value3 = EVENT[5];
  float EVENTmapy = map(EVENT[5], 0, 115, 180, 260);

  float value4 = EVENT[5];
  float EVENTmapx = map(EVENT[5], 0, 115, 350, 470);

  float value5 = INTERACTIVE[5];
  float INTERACTIVEmap = map(INTERACTIVE[5], 0, 115, 180, 330);

  float value6 = SPATIAL[5];
  float SPATIALmapy = map(SPATIAL[5], 0, 115, 180, 260);

  float value7 = SPATIAL[5];
  float SPATIALmapx = map(SPATIAL[5], 0, 115, 350, 230);

  float value8 = PRODUCT[5];
  float PRODUCTmapy = map(PRODUCT[5], 0, 115, 180, 120);

  float value9 = SPATIAL[5];
  float PRODUCTmapx = map(PRODUCT[5], 0, 115, 350, 230);


  noStroke();
  fill(Majoritas);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);
  text("Majoritas", 10, 135);
}

void drawSoapmill() {


  float value = BRAND[6];
  float BRANDmap = map(BRAND[6], 0, 115, 180, 50);



  float value2 = EDITORIAL[6];
  float EDITORIALmapy = map(EDITORIAL[6], 0, 115, 180, 120);

  float value21 = EDITORIAL[6];
  float EDITORIALmapx = map(EDITORIAL[6], 0, 115, 350, 470);

  float value3 = EVENT[6];
  float EVENTmapy = map(EVENT[6], 0, 115, 180, 260);

  float value4 = EVENT[6];
  float EVENTmapx = map(EVENT[6], 0, 115, 350, 470);

  float value5 = INTERACTIVE[6];
  float INTERACTIVEmap = map(INTERACTIVE[6], 0, 115, 180, 330);

  float value6 = SPATIAL[6];
  float SPATIALmapy = map(SPATIAL[6], 0, 115, 180, 260);

  float value7 = SPATIAL[6];
  float SPATIALmapx = map(SPATIAL[6], 0, 115, 350, 230);

  float value8 = PRODUCT[6];
  float PRODUCTmapy = map(PRODUCT[6], 0, 115, 180, 120);

  float value9 = SPATIAL[6];
  float PRODUCTmapx = map(PRODUCT[6], 0, 115, 350, 230);


  noStroke();
  fill(Soapmill);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);
  text("Soapmill", 10, 155);
}

void drawMKBT() {

  float value = BRAND[7];
  float BRANDmap = map(BRAND[7], 0, 115, 180, 50);


  float value2 = EDITORIAL[7];
  float EDITORIALmapy = map(EDITORIAL[7], 0, 115, 180, 120);

  float value21 = EDITORIAL[7];
  float EDITORIALmapx = map(EDITORIAL[7], 0, 115, 350, 470);

  float value3 = EVENT[7];
  float EVENTmapy = map(EVENT[7], 0, 115, 180, 260);

  float value4 = EVENT[7];
  float EVENTmapx = map(EVENT[7], 0, 115, 350, 470);

  float value5 = INTERACTIVE[7];
  float INTERACTIVEmap = map(INTERACTIVE[7], 0, 115, 180, 330);

  float value6 = SPATIAL[7];
  float SPATIALmapy = map(SPATIAL[7], 0, 115, 180, 260);

  float value7 = SPATIAL[7];
  float SPATIALmapx = map(SPATIAL[7], 0, 115, 350, 230);

  float value8 = PRODUCT[7];
  float PRODUCTmapy = map(PRODUCT[7], 0, 115, 180, 120);

  float value9 = SPATIAL[7];
  float PRODUCTmapx = map(PRODUCT[7], 0, 115, 350, 230);


  noStroke();
  fill(MKBT);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);
  text("MKBT", 10, 175);
}

void drawTimishort() {


  float value = BRAND[8];
  float BRANDmap = map(BRAND[8], 0, 115, 180, 50);

  float value2 = EDITORIAL[8];
  float EDITORIALmapy = map(EDITORIAL[8], 0, 115, 180, 120);

  float value21 = EDITORIAL[8];
  float EDITORIALmapx = map(EDITORIAL[8], 0, 115, 350, 470);

  float value3 = EVENT[8];
  float EVENTmapy = map(EVENT[8], 0, 115, 180, 260);

  float value4 = EVENT[8];
  float EVENTmapx = map(EVENT[8], 0, 115, 350, 470);

  float value5 = INTERACTIVE[8];
  float INTERACTIVEmap = map(INTERACTIVE[8], 0, 115, 180, 330);

  float value6 = SPATIAL[8];
  float SPATIALmapy = map(SPATIAL[8], 0, 115, 180, 260);

  float value7 = SPATIAL[8];
  float SPATIALmapx = map(SPATIAL[8], 0, 115, 350, 230);

  float value8 = PRODUCT[8];
  float PRODUCTmapy = map(PRODUCT[8], 0, 115, 180, 120);

  float value9 = SPATIAL[8];
  float PRODUCTmapx = map(PRODUCT[8], 0, 115, 350, 230);


  noStroke();
  fill(Timishort);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);
  text("Timishort", 10, 195);
}

void drawMinorities() {

  float value = BRAND[9];
  float BRANDmap = map(BRAND[9], 0, 115, 180, 50);

  float value2 = EDITORIAL[9];
  float EDITORIALmapy = map(EDITORIAL[9], 0, 115, 180, 120);

  float value21 = EDITORIAL[9];
  float EDITORIALmapx = map(EDITORIAL[9], 0, 115, 350, 470);

  float value3 = EVENT[9];
  float EVENTmapy = map(EVENT[9], 0, 115, 180, 260);

  float value4 = EVENT[9];
  float EVENTmapx = map(EVENT[9], 0, 115, 350, 470);

  float value5 = INTERACTIVE[9];
  float INTERACTIVEmap = map(INTERACTIVE[9], 0, 115, 180, 330);

  float value6 = SPATIAL[9];
  float SPATIALmapy = map(SPATIAL[9], 0, 115, 180, 260);

  float value7 = SPATIAL[9];
  float SPATIALmapx = map(SPATIAL[9], 0, 115, 350, 230);

  float value8 = PRODUCT[9];
  float PRODUCTmapy = map(PRODUCT[9], 0, 115, 180, 120);

  float value9 = SPATIAL[9];
  float PRODUCTmapx = map(PRODUCT[9], 0, 115, 350, 230);


  noStroke();
  fill(Minorities);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);
  text("Minorities", 10, 215);
}

void drawLuxten() {

  //Mapping the tris
  float value = BRAND[10];
  float BRANDmap = map(BRAND[10], 0, 115, 180, 50);

  float value2 = EDITORIAL[10];
  float EDITORIALmapy = map(EDITORIAL[10], 0, 115, 180, 120);

  float value21 = EDITORIAL[10];
  float EDITORIALmapx = map(EDITORIAL[10], 0, 115, 350, 470);

  float value3 = EVENT[10];
  float EVENTmapy = map(EVENT[10], 0, 115, 180, 260);

  float value4 = EVENT[10];
  float EVENTmapx = map(EVENT[10], 0, 115, 350, 470);

  float value5 = INTERACTIVE[10];
  float INTERACTIVEmap = map(INTERACTIVE[10], 0, 115, 180, 330);

  float value6 = SPATIAL[10];
  float SPATIALmapy = map(SPATIAL[10], 0, 115, 180, 260);

  float value7 = SPATIAL[10];
  float SPATIALmapx = map(SPATIAL[10], 0, 115, 350, 230);

  float value8 = PRODUCT[10];
  float PRODUCTmapy = map(PRODUCT[10], 0, 115, 180, 120);

  float value9 = SPATIAL[10];
  float PRODUCTmapx = map(PRODUCT[10], 0, 115, 350, 230);


  noStroke();
  fill(Luxten);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);
  text("Luxten", 10, 235);
}

void drawAlert() {

  //Mapping the tris
  float value = BRAND[11];
  float BRANDmap = map(BRAND[11], 0, 115, 180, 50);

  float value2 = EDITORIAL[11];
  float EDITORIALmapy = map(EDITORIAL[11], 0, 115, 180, 120);

  float value21 = EDITORIAL[11];
  float EDITORIALmapx = map(EDITORIAL[11], 0, 115, 350, 470);

  float value3 = EVENT[11];
  float EVENTmapy = map(EVENT[11], 0, 115, 180, 260);

  float value4 = EVENT[11];
  float EVENTmapx = map(EVENT[11], 0, 115, 350, 470);

  float value5 = INTERACTIVE[11];
  float INTERACTIVEmap = map(INTERACTIVE[11], 0, 115, 180, 330);

  float value6 = SPATIAL[11];
  float SPATIALmapy = map(SPATIAL[11], 0, 115, 180, 260);

  float value7 = SPATIAL[11];
  float SPATIALmapx = map(SPATIAL[11], 0, 115, 350, 230);

  float value8 = PRODUCT[11];
  float PRODUCTmapy = map(PRODUCT[11], 0, 115, 180, 120);

  float value9 = SPATIAL[11];
  float PRODUCTmapx = map(PRODUCT[11], 0, 115, 350, 230);


  noStroke();
  fill(Alert);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);
  text("Alert", 10, 255);
}

void drawPEK() {

  //Mapping the tris
  float value = BRAND[12];
  float BRANDmap = map(BRAND[12], 0, 115, 180, 50);

  float value2 = EDITORIAL[12];
  float EDITORIALmapy = map(EDITORIAL[12], 0, 115, 180, 120);

  float value21 = EDITORIAL[12];
  float EDITORIALmapx = map(EDITORIAL[12], 0, 115, 350, 470);

  float value3 = EVENT[12];
  float EVENTmapy = map(EVENT[12], 0, 115, 180, 260);

  float value4 = EVENT[12];
  float EVENTmapx = map(EVENT[12], 0, 115, 350, 470);

  float value5 = INTERACTIVE[12];
  float INTERACTIVEmap = map(INTERACTIVE[12], 0, 115, 180, 330);

  float value6 = SPATIAL[12];
  float SPATIALmapy = map(SPATIAL[12], 0, 115, 180, 260);

  float value7 = SPATIAL[12];
  float SPATIALmapx = map(SPATIAL[12], 0, 115, 350, 230);

  float value8 = PRODUCT[12];
  float PRODUCTmapy = map(PRODUCT[12], 0, 115, 180, 120);

  float value9 = SPATIAL[12];
  float PRODUCTmapx = map(PRODUCT[12], 0, 115, 350, 230);


  noStroke();
  fill(PEK);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);
  text("PEK", 10, 275);
}

void drawAwake() {

  //Mapping the tris
  float value = BRAND[13];
  float BRANDmap = map(BRAND[13], 0, 115, 180, 50);

 float value2 = EDITORIAL[13];
  float EDITORIALmapy = map(EDITORIAL[13], 0, 115, 180, 120);

  float value21 = EDITORIAL[13];
  float EDITORIALmapx = map(EDITORIAL[13], 0, 115, 350, 470);

  float value3 = EVENT[13];
  float EVENTmapy = map(EVENT[13], 0, 115, 180, 260);

  float value4 = EVENT[0];
  float EVENTmapx = map(EVENT[13], 0, 115, 350, 470);

  float value5 = INTERACTIVE[13];
  float INTERACTIVEmap = map(INTERACTIVE[13], 0, 115, 180, 330);

  float value6 = SPATIAL[13];
  float SPATIALmapy = map(SPATIAL[13], 0, 115, 180, 260);

  float value7 = SPATIAL[13];
  float SPATIALmapx = map(SPATIAL[13], 0, 115, 350, 230);

  float value8 = PRODUCT[13];
  float PRODUCTmapy = map(PRODUCT[13], 0, 115, 180, 120);

  float value9 = SPATIAL[13];
  float PRODUCTmapx = map(PRODUCT[13], 0, 115, 350, 230);


  noStroke();
  fill(Awake);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);
  text("Awake", 10, 295);
}

void drawRoz() {

  //Mapping the tris
  float value = BRAND[14];
  float BRANDmap = map(BRAND[14], 0, 115, 180, 50);

 float value2 = EDITORIAL[14];
  float EDITORIALmapy = map(EDITORIAL[14], 0, 115, 180, 120);

  float value21 = EDITORIAL[14];
  float EDITORIALmapx = map(EDITORIAL[14], 0, 115, 350, 470);

  float value3 = EVENT[14];
  float EVENTmapy = map(EVENT[14], 0, 115, 180, 260);

  float value4 = EVENT[14];
  float EVENTmapx = map(EVENT[14], 0, 115, 350, 470);

  float value5 = INTERACTIVE[14];
  float INTERACTIVEmap = map(INTERACTIVE[14], 0, 115, 180, 330);

  float value6 = SPATIAL[14];
  float SPATIALmapy = map(SPATIAL[14], 0, 115, 180, 260);

  float value7 = SPATIAL[14];
  float SPATIALmapx = map(SPATIAL[14], 0, 115, 350, 230);

  float value8 = PRODUCT[14];
  float PRODUCTmapy = map(PRODUCT[14], 0, 115, 180, 120);

  float value9 = SPATIAL[14];
  float PRODUCTmapx = map(PRODUCT[14], 0, 115, 350, 230);


  noStroke();
  fill(Roz);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);
  text("Roz", 10, 315);
}

void drawTesatori() {


  float value = BRAND[15];
  float BRANDmap = map(BRAND[15], 0, 115, 180, 50);

  float value2 = EDITORIAL[15];
  float EDITORIALmapy = map(EDITORIAL[15], 0, 115, 180, 120);

  float value21 = EDITORIAL[15];
  float EDITORIALmapx = map(EDITORIAL[15], 0, 115, 350, 470);

  float value3 = EVENT[15];
  float EVENTmapy = map(EVENT[15], 0, 115, 180, 260);

  float value4 = EVENT[15];
  float EVENTmapx = map(EVENT[15], 0, 115, 350, 470);

  float value5 = INTERACTIVE[15];
  float INTERACTIVEmap = map(INTERACTIVE[15], 0, 115, 180, 330);

  float value6 = SPATIAL[15];
  float SPATIALmapy = map(SPATIAL[15], 0, 115, 180, 260);

  float value7 = SPATIAL[15];
  float SPATIALmapx = map(SPATIAL[15], 0, 115, 350, 230);

  float value8 = PRODUCT[15];
  float PRODUCTmapy = map(PRODUCT[15], 0, 115, 180, 120);

  float value9 = SPATIAL[15];
  float PRODUCTmapx = map(PRODUCT[15], 0, 115, 350, 230);

  noStroke();
  fill(Tesatori);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);
  text("Tesatori", 10, 335);
}

void drawPrecon() {


  float value = BRAND[16];
  float BRANDmap = map(BRAND[16], 0, 115, 180, 50);

  float value2 = EDITORIAL[16];
  float EDITORIALmapy = map(EDITORIAL[16], 0, 115, 180, 120);

  float value21 = EDITORIAL[16];
  float EDITORIALmapx = map(EDITORIAL[16], 0, 115, 350, 470);

  float value3 = EVENT[16];
  float EVENTmapy = map(EVENT[16], 0, 115, 180, 260);

  float value4 = EVENT[16];
  float EVENTmapx = map(EVENT[16], 0, 115, 350, 470);

  float value5 = INTERACTIVE[16];
  float INTERACTIVEmap = map(INTERACTIVE[16], 0, 115, 180, 330);

  float value6 = SPATIAL[16];
  float SPATIALmapy = map(SPATIAL[16], 0, 115, 180, 260);

  float value7 = SPATIAL[16];
  float SPATIALmapx = map(SPATIAL[16], 0, 115, 350, 230);

  float value8 = PRODUCT[16];
  float PRODUCTmapy = map(PRODUCT[16], 0, 115, 180, 120);

  float value9 = SPATIAL[16];
  float PRODUCTmapx = map(PRODUCT[16], 0, 115, 350, 230);


  noStroke();
  fill(Precon);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);
  text("Precon", 10, 355);
}

void drawBere() {

  //Mapping the tris
  float value = BRAND[17];
  float BRANDmap = map(BRAND[17], 0, 115, 180, 50);



  float value2 = EDITORIAL[17];
  float EDITORIALmapy = map(EDITORIAL[17], 0, 115, 180, 120);

  float value21 = EDITORIAL[17];
  float EDITORIALmapx = map(EDITORIAL[17], 0, 115, 350, 470);

  float value3 = EVENT[17];
  float EVENTmapy = map(EVENT[17], 0, 115, 180, 260);

  float value4 = EVENT[17];
  float EVENTmapx = map(EVENT[17], 0, 115, 350, 470);

  float value5 = INTERACTIVE[17];
  float INTERACTIVEmap = map(INTERACTIVE[17], 0, 115, 180, 330);

  float value6 = SPATIAL[17];
  float SPATIALmapy = map(SPATIAL[17], 0, 115, 180, 260);

  float value7 = SPATIAL[17];
  float SPATIALmapx = map(SPATIAL[17], 0, 115, 350, 230);

  float value8 = PRODUCT[17];
  float PRODUCTmapy = map(PRODUCT[17], 0, 115, 180, 120);

  float value9 = SPATIAL[17];
  float PRODUCTmapx = map(PRODUCT[17], 0, 115, 350, 230);


  noStroke();
  fill(Bere);

  triangle(350, 190, 350, BRANDmap, EDITORIALmapx, EDITORIALmapy);
  triangle(350, 190, EDITORIALmapx, EDITORIALmapy, EVENTmapx, EVENTmapy);
  triangle(350, 190, EVENTmapx, EVENTmapy, 350, INTERACTIVEmap);
  triangle(350, 190, 350, INTERACTIVEmap, SPATIALmapx, SPATIALmapy);
  triangle(350, 190, SPATIALmapx, SPATIALmapy, PRODUCTmapx, PRODUCTmapy);
  triangle(350, 190, PRODUCTmapx, PRODUCTmapy, 350, BRANDmap);
  text("Bere", 10, 375);
}



void draw() {

  {
    if (mousePressed)
    {
      //Sunday
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=25 && mouseY <= 40)
      {
        drawSunday();
      }
      //UrbanEye
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=45 && mouseY <= 60)
      {
        drawUrbanEye();
      }
      //Urbanmarkers
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=65 && mouseY <= 80)
      {
        drawUrbanmarkers();
      }
      //Ento
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=85 && mouseY <= 100)
      {
        drawEnto();
      }
      //Hiphip
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=105 && mouseY <= 120)
      {
        drawHiphip();
      }
      //Majoritas
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=125 && mouseY <= 140)
      {
        drawMajoritas();
      }
      //Soapmill
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=145 && mouseY <= 160)
      {
        drawSoapmill();
      }
      //MKBT
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=165 && mouseY <= 180)
      {
        drawMKBT();
      }
      //Timishort
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=185 && mouseY <= 200)
      {
        drawTimishort();
      }
      //Minorities
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=205 && mouseY <= 220)
      {
        drawMinorities();
      }
      //Luxten
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=225 && mouseY <= 240)
      {
        drawLuxten();
      }
      //Alert
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=245 && mouseY <= 260)
      {
        drawAlert();
      }
      //PEK
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=265 && mouseY <= 280)
      {
        drawPEK();
      }
      //Awake
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=285 && mouseY <= 300)
      {
        drawAwake();
      }
      //Roz
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=305 && mouseY <= 320)
      {
        drawRoz();
      }
      //Tesatori
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=325 && mouseY <= 340)
      {
        drawTesatori();
      }
      //Precon
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=345 && mouseY <= 360)
      {
        drawPrecon();
      }
      //Bere
      if (mouseX >= 10 && mouseX <= 55 && mouseY >=365 && mouseY <= 380)
      {
        drawBere();
      }

      //CLEAR function
      if (mouseX >= 550 && mouseX <= 600 && mouseY >= 380 && mouseY <= 400)
      {
        clearHex();
      }
      if (mouseX > 550 && mouseX < 600 && mouseY > 0 && mouseY < 25)
        //Axes
      {
        strokeWeight(0);
        fill(255, 255, 255, 80);
        //top rect
        rect(338, 40, 25, 14);
        //EDITORIAL rect
        rect(477, 123, 25, 15);
        //EVENT rect
        rect(477, 241, 25, 15);
        //bottom rect
        rect(338, 328, 25, 14);
        //spedf rect
        rect(197, 241, 25, 15);
        //PRODUCT rect
        rect(197, 123, 25, 15);
        //origin rect
        rect(344, 182, 12, 15);
        textSize(11);
        fill(207, 75, 75, 200);
        text("0", 347, 194);
        text("115", 340, 53);
        text("115", 480, 135);
        text("115", 479, 253);
        text("115", 340, 340);
        text("115", 199, 253);
        text("115", 199, 135);
        textSize(14);
      }
    }
  }
}