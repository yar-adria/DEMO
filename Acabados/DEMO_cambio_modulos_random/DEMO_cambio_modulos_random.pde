//Pulsando tecla cambia modulos (random) de la respectiva letra
//'d' 'e' 'm' & 'o'
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
PShape modul2un;
PShape modul2inv;
PShape modul2invbi;
PShape modul2invple;
PShape modul2invun;
PShape modul3;
PShape modul3bi;
PShape modul3ple;
PShape modul3un;
PShape modul3inv;
PShape modul3invbi;
PShape modul3invple;
PShape modul3invun;
PShape modul4;
PShape modul4bi;
PShape modul4ple;
PShape modul4un;
PShape modul4inv;
PShape modul4invbi;
PShape modul4invple;
PShape modul4invun;

//color
int valorA =mouseX;
int valorB =valorA+180;

float cambio= random(0,20);
float cambio1= random(0,40);
float cambio2= random(0,40);
float cambio3= random(0,20);
float cambio4= random(0,20);
float cambio5= random(0,20);
float cambio6= random(0,20);
float cambio7= random(0,20);
float cambio8= random(0,40);
float cambio9= random(0,20);
float cambio10= random(0,40);
float cambio11= random(0,20);
float cambio12= random(0,40);
float cambio13= random(0,40);
float cambio14= random(0,40);
float cambio15= random(0,40);

void setup(){
  size(400,200);
  smooth();
  colorMode(HSB,360,100,100,100);
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
  modul2un = loadShape("modul2un.svg");
  modul2inv = loadShape("modul2inv.svg");
  modul2invbi = loadShape("modul2invbi.svg");
  modul2invple = loadShape("modul2invple.svg");
  modul2invun = loadShape("modul2invun.svg");
  modul3 = loadShape("modul3.svg");
  modul3bi = loadShape("modul3bi.svg");
  modul3ple = loadShape("modul3ple.svg");
  modul3un = loadShape("modul3un.svg");
  modul3inv = loadShape("modul3inv.svg");
  modul3invbi = loadShape("modul3invbi.svg");
  modul3invple = loadShape("modul3invple.svg");
  modul3invun = loadShape("modul3invun.svg");
  modul4 = loadShape("modul4.svg");
  modul4bi = loadShape("modul4bi.svg");
  modul4ple = loadShape("modul4ple.svg");
  modul4un = loadShape("modul4un.svg");
  modul4inv = loadShape("modul4inv.svg");
  modul4invbi = loadShape("modul4invbi.svg");
  modul4invple = loadShape("modul4invple.svg");
  modul4invun = loadShape("modul4invun.svg");
  
  
  
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
  modul1bi.disableStyle();
  modul1x6.disableStyle();
  modul1x6bi.disableStyle();
  modul1x2.disableStyle();
  modul1x2bi.disableStyle();
  modul2.disableStyle();
  modul2bi.disableStyle();
  modul2ple.disableStyle();
  modul2un.disableStyle();
  modul2inv.disableStyle();
  modul2invbi.disableStyle();
  modul2invple.disableStyle();
  modul2invun.disableStyle();
  modul3.disableStyle();
  modul3bi.disableStyle();
  modul3ple.disableStyle();
  modul3un.disableStyle();
  modul3inv.disableStyle();
  modul3invbi.disableStyle();
  modul3invple.disableStyle();
  modul3invun.disableStyle();
  modul4.disableStyle();
  modul4bi.disableStyle();
  modul4ple.disableStyle();
  modul4un.disableStyle();
  modul4inv.disableStyle();
  modul4invbi.disableStyle();
  modul4invple.disableStyle();
  modul4invun.disableStyle();
  
  int valorA =mouseX;
  int valorB =valorA+180;
  
  if(valorA>180){
    valorB = valorA-180;
  }
  else if (valorA<180){
    valorB = valorA+180;
  }
  
  //stroke(0);
  //strokeWeight(1);
  noStroke();
    
  //D
   fill( valorA ,100,100);
  if(cambio<10){
    shape(modul1x6, 20, 20);
  }
  else{
    shape(modul1x6bi, 20, 20);
  }
    
    fill( valorA ,50,100);
    if(cambio1<10){
  shape(modul2, 30, 20);
    }
    else if(cambio1>10&&cambio1<20){
      shape(modul2bi, 30, 20);
    }
    else if(cambio1>20&&cambio1<30){
      shape(modul2ple, 30, 20);
    }
    else if(cambio1>30){
      shape(modul2un, 30, 20);
    }
    
    fill( valorB ,50,100);
    if(cambio2<10){
      shape(modul2inv, 30,50);
    }
    else if(cambio2>10&&cambio2<20){
      shape(modul2invbi, 30,50);
    }
    else if(cambio2>20&&cambio2<30){
      shape(modul2invun, 30,50);
    }
    else{
      shape(modul2invple, 30,50);
}
  
  
  //E
    fill( valorA ,100,100);
    if(cambio3<10){
    shape(modul1x6, 110,20);
  }
  else{
    shape(modul1x6bi, 110,20);
  }
  
    fill( valorA ,60,100);
    if(cambio4<10){
    shape(modul1x2, 120,20);
  }
  else{
    shape(modul1x2bi, 120,20);
  }
  
  if(cambio5<10){
    shape(modul1x2, 120,40);
  }
  else{
    shape(modul1x2bi, 120,40);
  }
  
  if(cambio6<10){
    shape(modul1x2, 120,70);
  }
  else{
    shape(modul1x2bi, 120,70);
  }
  
  
  //M
      fill( valorA ,100,100);
      if(cambio7<10){
    shape(modul1x6, 190,20);
  }
  else{
    shape(modul1x6bi, 190,20);
  }
  
    fill( valorA ,50,100);
    if(cambio8<10){
      shape(modul4, 200, 20);
    }
    else if(cambio8>10&&cambio8<20){
      shape(modul4bi, 200, 20);
    }
    else if(cambio8>20&&cambio8<30){
      shape(modul4un, 200, 20);
    }
    else{
      shape(modul4ple, 200, 20);
}
    fill( valorA ,50,100);
    if(cambio9<10){
    shape(modul1, 215, 40);
  }
  else{
    shape(modul1bi, 215, 40);
  }
  
    fill( valorB ,50,100);
   if(cambio10<10){
      shape(modul4inv, 225, 20);
    }
    else if(cambio10>10&&cambio10<20){
      shape(modul4invun, 225, 20);
    }
    else if(cambio10>20&&cambio10<30){
      shape(modul4invbi, 225, 20);
    }
    else{
      shape(modul4invple, 225, 20);
}
  
      fill( valorA ,100,100);
      if(cambio11<10){
    shape(modul1x6, 240,20);
  }
  else{
    shape(modul1x6bi, 240,20);
  }
  
  
  //O
    fill( valorA ,50,100);
    if(cambio12<10){
      shape(modul3, 300,20);
    }
    else if(cambio12>10&&cambio12<20){
      shape(modul3bi, 300,20);
    }
    else if(cambio12>20&&cambio12<30){
      shape(modul3un, 300,20);
    }
    else{
      shape(modul3ple, 300,20);
}
  
    fill( valorB ,50,100);
    if(cambio13<10){
      shape(modul3inv, 300, 50);
    }
    else if(cambio13>10&&cambio13<20){
      shape(modul3invbi, 300, 50);
    }
    else if(cambio13>20&&cambio13<30){
      shape(modul3invun, 300, 50);
    }
    else{
      shape(modul3invple, 300, 50);
}
  
    fill( valorA ,50,100);
    if(cambio14<10){
      shape(modul2, 320, 20);
    }
    else if(cambio14>10&&cambio14<20){
      shape(modul2bi, 320, 20);
    }
    else if(cambio14>20&&cambio14<30){
      shape(modul2un, 320, 20);
    }
    else{
      shape(modul2ple, 320, 20);
}
  
    fill( valorB ,50,100);
    if(cambio15<10){
      shape(modul2inv, 320, 50);
    }
    else if(cambio15>10&&cambio15<20){
      shape(modul2invbi, 320, 50);
    }
    else if(cambio15>20&&cambio15<30){
      shape(modul2invun, 320, 50);
    }
    else{
      shape(modul2invple, 320, 50);
}
  
  
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
  if (key == 'd'){
    cambio=random(0,20);
    cambio1=(random(0,40));
    cambio2=(random(0,40));
    background(360);
  }
  if (key == 'e'){
   
    cambio3=random(0,20);
    cambio4=random(0,20);
    cambio5=random(0,20);
    cambio6=random(0,20);
    background(360);
  }
  if (key == 'm'){
    cambio7=random(0,20);
    cambio8=random(0,40);
    cambio9=random(0,20);
    cambio10=random(0,40);
    cambio11=random(0,20);
    background(360);
  }
  if (key == 'o'){
    cambio12=random(0,40);
    cambio13=random(0,40);
    cambio14=random(0,40);
    cambio15=random(0,40);
    background(360);
  }
  
  
}
  

