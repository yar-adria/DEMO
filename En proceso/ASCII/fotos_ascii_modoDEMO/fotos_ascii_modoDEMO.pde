PFont mono;
PImage imatge;
color c;
float brillo;
import processing.pdf.*;
PGraphicsPDF pdf;
boolean guardar;

PShape modulD;
PShape modulE;
PShape modulM;
PShape modulO;



void setup () {
  size(1200, 800);
  background(255);
  imatge = loadImage("hello1.jpg");
  mono = loadFont("Apercu-Mono-4.vlw");
  modulD = loadShape("modulod.svg");
  modulE = loadShape("moduloe.svg");
  modulM = loadShape("modulom.svg");
  modulO = loadShape("moduloo.svg");
}

void draw() {


  modulD.disableStyle();
  modulE.disableStyle();
  modulM.disableStyle();
  modulO.disableStyle();

  if (guardar) {
    pdf = (PGraphicsPDF) createGraphics(width, height, PDF, "hsb_test_"+frameCount+".pdf");    
    beginRecord(pdf);
    pdf.colorMode(RGB);
    pdf.strokeJoin(MITER);
    pdf.strokeCap(SQUARE);
    pdf.fill(0);
    pdf.noStroke();
    pdf.rect(0, 0, width, height);
  }
  background(255);
  image(imatge, 0, 0);
 

  for (int i=0; i<400; i=i+5) {
    for (int j=0; j<400; j=j+5) {
      c = get(i, j);
      brillo = brightness(c);
      map (c, 0, 100, 0, height);
      fill(c);
      noStroke();

      if (brillo<50) {
        fill(0, 0, 255);
        shape(modulO, ((i+400)*2)-400, j*2);
      } else if (brillo<100) {
        fill(0, 0, 255);
        shape(modulM, ((i+400)*2)-400, j*2);
        
      } else if (brillo<150) {
        fill(0, 0, 255);
        shape(modulD, ((i+400)*2)-400, j*2);
      } else if (brillo<192) {
        fill(0, 0, 255);
        shape(modulE, ((i+400)*2)-400, j*2);
      } else if (brillo>192) {
        fill(0, 0, 255);
        text(".", ((i+400)*2)-400, j*2, 255);
      }
    }
  }
  
  
  if (guardar) {
    endRecord();
    guardar = false;
  }
}
void keyPressed() {  
  if (key == 'z') {
    guardar=true;
    saveFrame("hsb_test_"+frameCount+".png");
  }
}

