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


void setup(){
  size(1280,700);
  smooth();
  colorMode(HSB,360,100,100,100);
  background(50);
  
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
}

void draw(){
  
  

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
  
  float valorA =random(-5,40);
  float valorB =valorA+180;
  
  //noLoop();
  
  if(valorA>180){
    valorB = valorA-180;
  }
  else if (valorA<180){
    valorB = valorA+180;
  }
  
  stroke(0);
  //strokeWeight(1);
  //noStroke();
  
  float distA = random(0,500);
  float distB = random(0,500);
  float repetA= random(-15,15);
  float repetB= random(-15,15);
  int posx1 = 150 ;
  int posx2 = posx1+30;
  int posx3 = posx1+270;
  int posx4 = posx1+300;
  int posx5 = posx1+470;
  int posx6 = posx1+500;
  int posx7 = posx1+545;
  int posx8 = posx1+575;
  int posx9 = posx1+620;
  int posx10 = posx1+740;
  int posx11 = posx1+800;
  int posy1 = 150;
  int posy2 = 240;
  int posy3 = 210;
  int posy4 = 300;
    
  //D
  for (int i= 20; i<2700; i++){
  // for(int j= 20; j<100; j++){
  
   fill( valorA ,100,100);
  if(cambio<10){
    shape(modul1x6, posx1+repetA, posy1+repetB);
  }
  else{
    shape(modul1x6bi, posx1+repetA, posy1+repetB);
  }
    
    fill( valorA ,50,100);
    if(cambio1<10){
  shape(modul2, posx2+repetA, posy1+repetB);
    }
    else if(cambio1>10&&cambio1<20){
      shape(modul2bi, posx2+repetA, posy1+repetB);
    }
    else{
      shape(modul2ple, posx2+repetA, posy1+repetB);
    }
    
    
    fill( valorB ,50,100);
    if(cambio2<10){
      shape(modul2inv, posx2+repetA,posy2+repetB);
    }
    else if(cambio2>10&&cambio2<20){
      shape(modul2invbi, posx2+repetA,posy2+repetB);
    }
    else{
      shape(modul2invple, posx2+repetA,posy2+repetB);
}
  
  
  //E
    fill( valorA ,100,100);
    if(cambio<10){
    shape(modul1x6, posx3+repetA,posy1+repetB);
  }
  else{
    shape(modul1x6bi, posx3+repetA,posy1+repetB);
  }
  
    fill( valorA ,60,100);
    if(cambio3<10){
    shape(modul1x2, posx4+repetA,posy1+repetB);
  }
  else{
    shape(modul1x2bi, posx4+repetA,posy1+repetB);
  }
  
  if(cambio3<10){
    shape(modul1x2, posx4+repetA,posy3+repetB);
  }
  else{
    shape(modul1x2bi, posx4+repetA,posy3+repetB);
  }
  
  if(cambio3<10){
    shape(modul1x2, posx4+repetA,posy4+repetB);
  }
  else{
    shape(modul1x2bi, posx4+repetA,posy4+repetB);
  }
  
  
  //M
      fill( valorA ,100,100);
      if(cambio<10){
    shape(modul1x6, posx5+repetA,posy1+repetB);
  }
  else{
    shape(modul1x6bi, posx5+repetA,posy1+repetB);
  }
  
    fill( valorA ,50,100);
    if(cambio4<10){
      shape(modul4, posx6+repetA, posy1+repetB);
    }
    else if(cambio4>10&&cambio4<20){
      shape(modul4bi, posx6+repetA, posy1+repetB);
    }
    else{
      shape(modul4ple, posx6+repetA, posy1+repetB);
}
    fill( valorA ,50,100);
    if(cambio3<10){
    shape(modul1, posx7+repetA, posy3+repetB);
  }
  else{
    shape(modul1bi, posx7+repetA, posy3+repetB);
  }
  
    fill( valorB ,50,100);
   if(cambio4<10){
      shape(modul4inv, posx8+repetA, posy1+repetB);
    }
    else if(cambio4>10&&cambio4<20){
      shape(modul4invbi, posx8+repetA, posy1+repetB);
    }
    else{
      shape(modul4invple, posx8+repetA, posy1+repetB);
}
  
      fill( valorA ,100,100);
      if(cambio<10){
    shape(modul1x6, posx9+repetA,posy1+repetB);
  }
  else{
    shape(modul1x6bi, posx9+repetA,posy1+repetB);
  }
  
  
  //O
    fill( valorA ,50,100);
    if(cambio5<10){
      shape(modul3, posx10+repetA,posy1+repetB);
    }
    else if(cambio5>10&&cambio5<20){
      shape(modul3bi, posx10+repetA,posy1+repetB);
    }
    else{
      shape(modul3ple, posx10+repetA,posy1+repetB);
}
  
    fill( valorB ,50,100);
    if(cambio6<10){
      shape(modul3inv, posx10+repetA, posy2+repetB);
    }
    else if(cambio6>10&&cambio6<20){
      shape(modul3invbi, posx10+repetA, posy2+repetB);
    }
    else{
      shape(modul3invple, posx10+repetA, posy2+repetB);
}
  
    fill( valorA ,50,100);
    if(cambio1<10){
      shape(modul2, posx11+repetA, posy1+repetB);
    }
    else if(cambio1>10&&cambio1<20){
      shape(modul2bi, posx11+repetA, posy1+repetB);
    }
    else{
      shape(modul2ple, posx11+repetA, posy1+repetB);
}
  
    fill( valorB ,50,100);
    if(cambio2<10){
      shape(modul2inv, posx11+repetA, posy2+repetB);
    }
    else if(cambio2>10&&cambio2<20){
      shape(modul2invbi, posx11+repetA, posy2+repetB);
    }
    else{
      shape(modul2invple, posx11+repetA, posy2+repetB);
}
valorA = valorA+random(-1,1);
valorB = valorB+random(-1,1);
repetA= repetA+random(-5,5);
repetB= repetB+random(-5,5);
   }
 //}
  //noLoop();
  
  if(guardar){
    endRecord();
     guardar = false;
   }
}

void keyPressed() {  
  if (key == 'z') {
    guardar=true;
    save("hsb_test_"+frameCount+".png");
    
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
  

