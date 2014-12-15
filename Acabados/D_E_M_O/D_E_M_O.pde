//Apretar 's' para guardar


import processing.pdf.*;

PGraphicsPDF pdf;

boolean guardar;

PShape modul1;
PShape modul1x6;
PShape modul1x2;
PShape modul2;
PShape modul2inv;
PShape modul3;
PShape modul3inv;
PShape modul4;
PShape modul4inv;

int valorA =mouseX;

int valorB =valorA+180;

void setup(){
  size(380,100);
  smooth();
  colorMode(HSB,360,100,100,100);
  background(360);
  
  modul1 = loadShape("modul1.svg");
  modul1x6 = loadShape("modul1x6.svg");
  modul1x2 = loadShape("modul1x2.svg");
  modul2 = loadShape("modul2.svg");
  modul2inv = loadShape("modul2inv.svg");
  modul3 = loadShape("modul3.svg");
  modul3inv = loadShape("modul3inv.svg");
  modul4 = loadShape("modul4.svg");
  modul4inv = loadShape("modul4inv.svg");
  
}

void draw(){
  
  if(guardar) {
    pdf = (PGraphicsPDF) createGraphics(width, height, PDF, "hsb_test_"+frameCount+".pdf");    
    beginRecord(pdf);
    pdf.colorMode(HSB, 360, 100, 100, 100);
    pdf.strokeJoin(MITER);
    pdf.strokeCap(SQUARE);
    pdf.fill(0);
    pdf.noStroke();
    pdf.rect(0,0,width,height);
  }

  modul1.disableStyle();
  modul1x6.disableStyle();
  modul1x2.disableStyle();
  modul2.disableStyle();
  modul2inv.disableStyle();
  modul3.disableStyle();
  modul3inv.disableStyle();
  modul4.disableStyle();
  modul4inv.disableStyle();
  
  int valorA =mouseX;
  int valorB =valorA+180;
  
  if(valorA>180){
    valorB = valorA-180;
  }
  else if (valorA<180){
    valorB = valorA+180;
  }
  
  stroke(0);
  strokeWeight(1);
  //noStroke();
    
  //D
   fill( valorA ,100,100);
  shape(modul1x6, 20, 20);
    fill( valorA ,50,100);
  shape(modul2, 30, 20);
    fill( valorB ,50,100);
  shape(modul2inv, 30,50);
  
  //E
    fill( valorA ,100,100);
  shape(modul1x6, 110,20);
    fill( valorA ,60,100);
  shape(modul1x2, 120,20);
  shape(modul1x2, 120,40);
  shape(modul1x2, 120,70);
  
  //M
      fill( valorA ,100,100);
  shape(modul1x6, 190,20);
    fill( valorA ,50,100);
  shape(modul4, 200, 20);
    fill( valorA ,50,100);
  shape(modul1, 215, 40);
    fill( valorB ,50,100);
  shape(modul4inv, 225, 20);
      fill( valorA ,100,100);
  shape(modul1x6, 240,20);
  
  //O
    fill( valorA ,50,100);
  shape(modul3, 300,20);
    fill( valorB ,50,100);
  shape(modul3inv, 300, 50);
    fill( valorA ,50,100);
  shape(modul2, 320, 20);
    fill( valorB ,50,100);
  shape(modul2inv, 320, 50);
  
  if(guardar){
    endRecord();
     guardar = false;
   }
}

void keyPressed() {  
  if (key == 's' || key == 'S') {
    guardar=true;
    saveFrame("hsb_test_"+frameCount+".png");
  }
}
  

