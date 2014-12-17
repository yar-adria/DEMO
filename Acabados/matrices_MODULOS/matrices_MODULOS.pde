//Pulsando tecla cambia modulos
//Pulsando 'p' cambia modulos según el criterio que marcamos
//Apretar 'z' para guardar


import processing.pdf.*;

PGraphicsPDF pdf;

boolean guardar;

PShape modul1;
PShape modul1bi;
PShape modul1x6;
PShape modul1x6bi;
PShape modul1x2;
PShape modul1x2bi;
PShape modul2;
PShape modul2bi;
PShape modul2ple;
PShape modul2inv;
PShape modul2invbi;
PShape modul2invple;
PShape modul3;
PShape modul3bi;
PShape modul3ple;
PShape modul3inv;
PShape modul3invbi;
PShape modul3invple;
PShape modul4;
PShape modul4bi;
PShape modul4ple;
PShape modul4inv;
PShape modul4invbi;
PShape modul4invple;

int valorA =mouseX;

int valorB =valorA+180;

float cambio= random(0,20);
float cambio1= random(0,30);
float cambio2= random(0,30);
float cambio3= random(0,20);
float cambio4= random(0,30);
float cambio5= random(0,30);
float cambio6= random(0,30);

float opacidad = 3;


void setup(){
  size(1230,480);
  smooth();
  colorMode(HSB,1230,100,100,100);
  background(360);
  
  modul1 = loadShape("modul1.svg");
  modul1bi = loadShape("modul1bi.svg");
  modul1x6 = loadShape("modul1x6.svg");
  modul1x6bi = loadShape("modul1x6bi.svg");
  modul1x2 = loadShape("modul1x2.svg");
  modul1x2bi = loadShape("modul1x2bi.svg");
  modul2 = loadShape("modul2.svg");
  modul2bi = loadShape("modul2bi.svg");
  modul2ple = loadShape("modul2ple.svg");
  modul2inv = loadShape("modul2inv.svg");
  modul2invbi = loadShape("modul2invbi.svg");
  modul2invple = loadShape("modul2invple.svg");
  modul3 = loadShape("modul3.svg");
  modul3bi = loadShape("modul3bi.svg");
  modul3ple = loadShape("modul3ple.svg");
  modul3inv = loadShape("modul3inv.svg");
  modul3invbi = loadShape("modul3invbi.svg");
  modul3invple = loadShape("modul3invple.svg");
  modul4 = loadShape("modul4.svg");
  modul4bi = loadShape("modul4bi.svg");
  modul4ple = loadShape("modul4ple.svg");
  modul4inv = loadShape("modul4inv.svg");
  modul4invbi = loadShape("modul4invbi.svg");
  modul4invple = loadShape("modul4invple.svg");
  
  
  
}

void draw(){
  
  if(guardar) {
    pdf = (PGraphicsPDF) createGraphics(width, height, PDF, "hsb_test_"+frameCount+".pdf");    
    beginRecord(pdf);
    pdf.colorMode(HSB, 1230, 100, 100, 100);
    pdf.strokeJoin(MITER);
    pdf.strokeCap(SQUARE);
    pdf.fill(0);
    pdf.noStroke();
    pdf.rect(0,0,width,height);
  }

  modul1.disableStyle();
  modul1bi.disableStyle();
  modul1x6.disableStyle();
  modul1x6bi.disableStyle();
  modul1x2.disableStyle();
  modul1x2bi.disableStyle();
  modul2.disableStyle();
  modul2bi.disableStyle();
  modul2ple.disableStyle();
  modul2inv.disableStyle();
  modul2invbi.disableStyle();
  modul2invple.disableStyle();
  modul3.disableStyle();
  modul3bi.disableStyle();
  modul3ple.disableStyle();
  modul3inv.disableStyle();
  modul3invbi.disableStyle();
  modul3invple.disableStyle();
  modul4.disableStyle();
  modul4bi.disableStyle();
  modul4ple.disableStyle();
  modul4inv.disableStyle();
  modul4invbi.disableStyle();
  modul4invple.disableStyle();
  
  int valorA =mouseX;
  int valorB =valorA+180;
  
  float opacidad = 10;

  
  if(valorA>180){
    valorB = valorA-180;
  }
  else if (valorA<180){
    valorB = valorA+180;
  }
  
  //stroke(0);
  //strokeWeight(1);
  noStroke();
    background(1230);
    
    //D
    
    pushMatrix();
    for (int i=0; i<6; i=i+1){
    stroke(0,3,6,opacidad);
    rotate(radians(1));
  
   fill( valorA ,100,100, opacidad);
  if(cambio<10){
    shape(modul1x6, 150, 150);
  }
  else{
    shape(modul1x6bi, 150, 150);
  }
    
    fill( valorA ,50,100,opacidad);
    if(cambio1<10){
  shape(modul2, 180, 150);
    }
    else if(cambio1>10&&cambio1<20){
      shape(modul2bi, 180, 150);
    }
    else{
      shape(modul2ple, 180, 150);
    }
    
    
    fill( valorB ,50,100,opacidad);
    if(cambio2<10){
      shape(modul2inv, 180,240);
    }
    else if(cambio2>10&&cambio2<20){
      shape(modul2invbi, 180,240);
    }
    else{
      shape(modul2invple, 180,240);
}
opacidad= opacidad+20;
  }
popMatrix();
  
  float opacidad1=10;
  //E
  
  pushMatrix();
    for (int i=0; i<8; i=i+1){
    stroke(203,3,6,opacidad1);
    rotate(radians(-2));
    
    
    fill( valorA ,100,100,opacidad1);
    if(cambio<10){
    shape(modul1x6, 410,150);
  }
  else{
    shape(modul1x6bi, 410,150);
  }
  
    fill( valorA ,60,100,opacidad1);
    if(cambio3<10){
    shape(modul1x2, 440,150);
  }
  else{
    shape(modul1x2bi, 440,150);
  }
  
  if(cambio3<10){
    shape(modul1x2, 440,210);
  }
  else{
    shape(modul1x2bi, 440,210);
  }
  
  if(cambio3<10){
    shape(modul1x2, 440,300);
  }
  else{
    shape(modul1x2bi, 440,300);
  }
  opacidad1=opacidad1+20;
  }
popMatrix();
  
  
  //M
  float opacidad2=10;
  
    pushMatrix();
    for (int i=0; i<7; i=i+1){
    stroke(0,3,6,opacidad2);
    rotate(radians(4));
    
      fill( valorA ,100,100,opacidad2);
      if(cambio<10){
    shape(modul1x6, 620,150);
  }
  else{
    shape(modul1x6bi, 620,150);
  }
  
    fill( valorA ,50,100,opacidad2);
    if(cambio4<10){
      shape(modul4, 650, 150);
    }
    else if(cambio4>10&&cambio4<20){
      shape(modul4bi, 650, 150);
    }
    else{
      shape(modul4ple, 650, 150);
}
    fill( valorA ,50,100,opacidad2);
    if(cambio3<10){
    shape(modul1, 695, 210);
  }
  else{
    shape(modul1bi, 695, 210);
  }
  
    fill( valorB ,50,100,opacidad2);
   if(cambio4<10){
      shape(modul4inv, 725, 150);
    }
    else if(cambio4>10&&cambio4<20){
      shape(modul4invbi, 725, 150);
    }
    else{
      shape(modul4invple, 725, 150);
}
  
      fill( valorA ,100,100,opacidad2);
      if(cambio<10){
    shape(modul1x6, 770,150);
  }
  else{
    shape(modul1x6bi, 770,150);
  }
  opacidad2=opacidad2+20;
  }
popMatrix();
  
  //O
  
   float opacidad3=10;
  
    pushMatrix();
    for (int i=0; i<7; i=i+1){
    stroke(0,3,6,opacidad3);
    translate(4,0);
    
    
    fill( valorA ,50,100,opacidad3);
    if(cambio5<10){
      shape(modul3, 890,150);
    }
    else if(cambio5>10&&cambio5<20){
      shape(modul3bi, 890,150);
    }
    else{
      shape(modul3ple, 890,150);
}
  
    fill( valorB ,50,100,opacidad3);
    if(cambio6<10){
      shape(modul3inv, 890, 240);
    }
    else if(cambio6>10&&cambio6<20){
      shape(modul3invbi, 890, 240);
    }
    else{
      shape(modul3invple, 890, 240);
}
  
    fill( valorA ,50,100,opacidad3);
    if(cambio1<10){
      shape(modul2, 950, 150);
    }
    else if(cambio1>10&&cambio1<20){
      shape(modul2bi, 950, 150);
    }
    else{
      shape(modul2ple, 950, 150);
}
  
    fill( valorB ,50,100,opacidad3);
    if(cambio2<10){
      shape(modul2inv, 950, 240);
    }
    else if(cambio2>10&&cambio2<20){
      shape(modul2invbi, 950, 240);
    }
    else{
      shape(modul2invple, 950, 240);
}
opacidad3=opacidad3+20;
  }
popMatrix();
  
  
  if(guardar){
    endRecord();
     guardar = false;
   }
}

void keyPressed() {  
  if (key == 'z') {
    guardar=true;
    saveFrame("hsb_test_"+frameCount+".png");
  }
  if (key == 'p'){
     cambio= random(0,20);
     cambio1= random(0,30);
     cambio2= random(0,30);
     cambio3= random(0,20);
     cambio4= random(0,30);
     cambio5= random(0,30);
     cambio6= random(0,30);
     background(360);
  }
  
}
  

