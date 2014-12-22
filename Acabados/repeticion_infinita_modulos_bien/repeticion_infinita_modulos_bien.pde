
//Pulsando 'p' cambia modulos según el criterio que marcamos
//Pulsando 'm' borra todo
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
  
  if(valorA>180){
    valorB = valorA-180;
  }
  else if (valorA<180){
    valorB = valorA+180;
  }
  
  stroke(0);
  //strokeWeight(1);
  //noStroke();
    
  //D
   fill( valorA ,100,100);
  if(cambio<10){
    shape(modul1x6, mouseX, mouseY);
  }
  else{
    shape(modul1x6bi, mouseX, mouseY);
  }
    
    fill( valorA ,50,100);
    if(cambio1<10){
  shape(modul2, mouseX+30, mouseY);
    }
    else if(cambio1>10&&cambio1<20){
      shape(modul2bi, mouseX+30, mouseY);
    }
    else{
      shape(modul2ple, mouseX+30, mouseY);
    }
    
    
    fill( valorB ,50,100);
    if(cambio2<10){
      shape(modul2inv, mouseX+30,90+mouseY);
    }
    else if(cambio2>10&&cambio2<20){
      shape(modul2invbi, mouseX+30,90+mouseY);
    }
    else{
      shape(modul2invple, mouseX+30,90+mouseY);
}
  
  
  //E
    fill( valorA ,100,100);
    if(cambio<10){
    shape(modul1x6, mouseX+260,mouseY);
  }
  else{
    shape(modul1x6bi, mouseX+260,mouseY);
  }
  
    fill( valorA ,60,100);
    if(cambio3<10){
    shape(modul1x2, mouseX+290,mouseY);
  }
  else{
    shape(modul1x2bi, mouseX+290,mouseY);
  }
  
  if(cambio3<10){
    shape(modul1x2, mouseX+290,mouseY+60);
  }
  else{
    shape(modul1x2bi, mouseX+290,mouseY+60);
  }
  
  if(cambio3<10){
    shape(modul1x2, mouseX+290,mouseY+150);
  }
  else{
    shape(modul1x2bi, mouseX+290,mouseY+150);
  }
  
  
  //M
      fill( valorA ,100,100);
      if(cambio<10){
    shape(modul1x6, mouseX+470,mouseY);
  }
  else{
    shape(modul1x6bi, mouseX+470,mouseY);
  }
  
    fill( valorA ,50,100);
    if(cambio4<10){
      shape(modul4, mouseX+500, mouseY);
    }
    else if(cambio4>10&&cambio4<20){
      shape(modul4bi, mouseX+500, mouseY);
    }
    else{
      shape(modul4ple, mouseX+500, mouseY);
}
    fill( valorA ,50,100);
    if(cambio3<10){
    shape(modul1, mouseX+545, mouseY+60);
  }
  else{
    shape(modul1bi, mouseX+545, mouseY+60);
  }
  
    fill( valorB ,50,100);
   if(cambio4<10){
      shape(modul4inv, mouseX+575, mouseY);
    }
    else if(cambio4>10&&cambio4<20){
      shape(modul4invbi, mouseX+575, mouseY);
    }
    else{
      shape(modul4invple, mouseX+575, mouseY);
}
  
      fill( valorA ,100,100);
      if(cambio<10){
    shape(modul1x6, mouseX+620,mouseY);
  }
  else{
    shape(modul1x6bi, mouseX+620,mouseY);
  }
  
  
  //O
    fill( valorA ,50,100);
    if(cambio5<10){
      shape(modul3, mouseX+740,mouseY);
    }
    else if(cambio5>10&&cambio5<20){
      shape(modul3bi, mouseX+740,mouseY);
    }
    else{
      shape(modul3ple, mouseX+740,mouseY);
}
  
    fill( valorB ,50,100);
    if(cambio6<10){
      shape(modul3inv, mouseX+740, 90+mouseY);
    }
    else if(cambio6>10&&cambio6<20){
      shape(modul3invbi, mouseX+740, 90+mouseY);
    }
    else{
      shape(modul3invple, mouseX+740, 90+mouseY);
}
  
    fill( valorA ,50,100);
    if(cambio1<10){
      shape(modul2, mouseX+800, mouseY);
    }
    else if(cambio1>10&&cambio1<20){
      shape(modul2bi, mouseX+800, mouseY);
    }
    else{
      shape(modul2ple, mouseX+800, mouseY);
}
  
    fill( valorB ,50,100);
    if(cambio2<10){
      shape(modul2inv, mouseX+800, 90+mouseY);
    }
    else if(cambio2>10&&cambio2<20){
      shape(modul2invbi, mouseX+800, 90+mouseY);
    }
    else{
      shape(modul2invple, mouseX+800, 90+mouseY);
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
  if (key == 'p'){
     cambio= random(0,20);
     cambio1= random(0,30);
     cambio2= random(0,30);
     cambio3= random(0,20);
     cambio4= random(0,30);
     cambio5= random(0,30);
     cambio6= random(0,30);
  }
  if (key == 'm'){
  background(360);
  }
  
}
  

