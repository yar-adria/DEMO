//Pulsando tecla cambia modulos (random) de la respectiva letra
//'d' 'e' 'm' & 'o'
//Apretar 'z' para guardar


import processing.pdf.*;

PGraphicsPDF pdf;

float quants = 60;

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

float cambio= random(0, 20);
float cambio1= random(0, 30);
float cambio2= random(0, 30);
float cambio3= random(0, 20);
float cambio4= random(0, 30);
float cambio5= random(0, 30);
float cambio6= random(0, 30);

float distA = random(0, 500);
float distB = random(0, 500);
float repetA= random(-1, 1);
float repetB= random(-15, 15);




int posx = 150;
int posy = 150;

void setup() {
  size(1280, 700);
  smooth();
  colorMode(HSB, 360, 100, 100, 100);
  background(50);
  frameRate(150);

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

  if (guardar) {
    pdf = (PGraphicsPDF) createGraphics(width, height, PDF, "hsb_test_"+frameCount+".pdf");    
    beginRecord(pdf);
    pdf.colorMode(HSB, 360, 100, 100, 100);
    pdf.strokeJoin(MITER);
    pdf.strokeCap(SQUARE);
    pdf.fill(0);
    pdf.noStroke();
    pdf.rect(0, 0, width, height);
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
  
  JSONObject json = loadJSONObject("http://memo.weird.es/three/jsons/resultsBicingShort.json");
  JSONObject json1 = loadJSONObject("http://memo.weird.es/three/jsons/resultsTransit.json");
  JSONObject json2 = loadJSONObject("http://memo.weird.es/three/jsons/resultsWeather.json");
  JSONObject json3 = loadJSONObject("http://memo.weird.es/three/crons/cronDistance.php");
  
  int criteri1 = json.getInt("bikes");
  int criteri2 = json1.getInt("transit");
  int criteri3 = json2.getInt("humidity");
  int criteri4 = json3.getInt("totalOnline");
  float criteri5 = json2.getFloat("temp");
  float criteri6 = json3.getFloat("distance");
  
  println(criteri1);
  println(criteri2);
  println(criteri3);
  println(criteri4);
  println(criteri5);
  println(criteri6);
}

void draw() {

  float repetA= random(-1, 1);
float repetB= random(-15, 15);



  float valorA =random(-5, 40);
  float valorB =valorA+180;

  //noLoop();

  if (valorA>180) {
    valorB = valorA-180;
  } else if (valorA<180) {
    valorB = valorA+180;
  }

  stroke(0);
  //strokeWeight(1);
  //noStroke();

demo(10,10);




  valorA = valorA+random(-1, 1);
  valorB = valorB+random(-1, 1);


  //}
  //noLoop();

  if (guardar) {
    endRecord();
    guardar = false;
  }
}

void demo(int posx, int posy){
  //D
  fill( valorA, 100, 100);
  if (cambio<10) {
    shape(modul1x6, posx+repetA, posy+repetB);
  } else {
    shape(modul1x6bi, posx+repetA, posy+repetB);
  }

  fill( valorA, 50, 100);
  if (cambio1<10) {
    shape(modul2, posx+30+repetA, posy+repetB);
  } else if (cambio1>10&&cambio1<20) {
    shape(modul2bi, posx+30+repetA, posy+repetB);
  } else {
    shape(modul2ple, posx+30+repetA, posy+repetB);
  }


  fill( valorB, 50, 100);
  if (cambio2<10) {
    shape(modul2inv, posx+30+repetA, posy+90+repetB);
  } else if (cambio2>10&&cambio2<20) {
    shape(modul2invbi, posx+30+repetA, posy+90+repetB);
  } else {
    shape(modul2invple, posx+30+repetA, posy+90+repetB);
  }


  //E
  fill( valorA, 100, 100);
  if (cambio<10) {
    shape(modul1x6, posx+270+repetA, posy+repetB);
  } else {
    shape(modul1x6bi, posx+270+repetA, posy+repetB);
  }

  fill( valorA, 60, 100);
  if (cambio3<10) {
    shape(modul1x2, posx+300+repetA, posy+repetB);
  } else {
    shape(modul1x2bi, posx+300+repetA, posy+repetB);
  }

  if (cambio3<10) {
    shape(modul1x2, posx+300+repetA, posy+60+repetB);
  } else {
    shape(modul1x2bi, posx+300+repetA, posy+60+repetB);
  }

  if (cambio3<10) {
    shape(modul1x2, posx+300+repetA, posy+150+repetB);
  } else {
    shape(modul1x2bi, posx+300+repetA, posy+150+repetB);
  }


  //M
  fill( valorA, 100, 100);
  if (cambio<10) {
    shape(modul1x6, posx+470+repetA, posy+repetB);
  } else {
    shape(modul1x6bi, posx+470+repetA, posy+repetB);
  }

  fill( valorA, 50, 100);
  if (cambio4<10) {
    shape(modul4, posx+500+repetA, posy+repetB);
  } else if (cambio4>10&&cambio4<20) {
    shape(modul4bi, posx+500+repetA, posy+repetB);
  } else {
    shape(modul4ple, posx+500+repetA, posy+repetB);
  }
  fill( valorA, 50, 100);
  if (cambio3<10) {
    shape(modul1, posx+545+repetA, posy+60+repetB);
  } else {
    shape(modul1bi, posx+545+repetA, posy+60+repetB);
  }

  fill( valorB, 50, 100);
  if (cambio4<10) {
    shape(modul4inv, posx+575+repetA, posy+repetB);
  } else if (cambio4>10&&cambio4<20) {
    shape(modul4invbi, posx+575+repetA, posy+repetB);
  } else {
    shape(modul4invple, posx+575+repetA, posy+repetB);
  }

  fill( valorA, 100, 100);
  if (cambio<10) {
    shape(modul1x6, posx+620+repetA, posy+repetB);
  } else {
    shape(modul1x6bi, posx+620+repetA, posy+repetB);
  }


  //O
  fill( valorA, 50, 100);
  if (cambio5<10) {
    shape(modul3, posx+740+repetA, posy+repetB);
  } else if (cambio5>10&&cambio5<20) {
    shape(modul3bi, posx+740+repetA, posy+repetB);
  } else {
    shape(modul3ple, posx+740+repetA, posy+repetB);
  }

  fill( valorB, 50, 100);
  if (cambio6<10) {
    shape(modul3inv, posx+740+repetA, posy+90+repetB);
  } else if (cambio6>10&&cambio6<20) {
    shape(modul3invbi, posx+740+repetA, posy+90+repetB);
  } else {
    shape(modul3invple, posx+740+repetA, posy+90+repetB);
  }

  fill( valorA, 50, 100);
  if (cambio1<10) {
    shape(modul2, posx+800+repetA, posy+repetB);
  } else if (cambio1>10&&cambio1<20) {
    shape(modul2bi, posx+800+repetA, posy+repetB);
  } else {
    shape(modul2ple, posx+800+repetA, posy+repetB);
  }

  fill( valorB, 50, 100);
  if (cambio2<10) {
    shape(modul2inv, posx+800+repetA, posy+90+repetB);
  } else if (cambio2>10&&cambio2<20) {
    shape(modul2invbi, posx+800+repetA, posy+90+repetB);
  } else {
    shape(modul2invple, posx+800+repetA, posy+90+repetB);
  }
}

void keyPressed() {  
  if (key == 'z') {
    guardar=true;
    save("hsb_test_"+frameCount+".png");
  }
  if (key == 'p') {
    cambio= random(0, 20);
    cambio1= random(0, 30);
    cambio2= random(0, 30);
    cambio3= random(0, 20);
    cambio4= random(0, 30);
    cambio5= random(0, 30);
    cambio6= random(0, 30);
    background(50);
  }
}

