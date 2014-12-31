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

float  posx1 = 20;
float posy1 = 20;
int posx2 = (int)posx1;
int posy2 = (int)posy1;

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



  
  
}

void draw() {
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



  demo(posx1, posy1);
  
  float num = random(1,3);
  int sencera = (int)num;
  
  if(sencera == 1){
    posy1 = posy1 - 2;
  }
  if(sencera == 2){
    posx1 = posx1 + 2;
  }
  if(sencera == 3){
    posy1 = posy1 + 2;
  }
  if(sencera == 1){
    posx1 = posx1 - 2;
  }
  else if (posy1<0){
    posy1 = posy1 + 2;
  }
  else if (posy1>800){
    posy1 = posy1 - 2;
  }
  else if (posx1<0){
    posx1 = posx1 + 2;
  }
  else if (posx1>1280){
    posx1 = posx1 - 2;
  }

  if (guardar) {
    endRecord();
    guardar = false;
  }
}

void demo(int posx, int posy) {

  //COLOR
  int valorA =50;
  int valorB =valorA+180;
  
  if (valorA>180) {
    valorB = valorA-180;
  } else if (valorA<180) {
    valorB = valorA+180;
  }
  
  //DATOS
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

  //D
  fill( valorA, 100, 100);
  if (criteri2<185) {
    shape(modul1x6, posx, posy);
  } else {
    shape(modul1x6bi, posx, posy);
  }

  fill( valorA, 50, 100);
  if (criteri1<5) {
    shape(modul2, posx+30, posy);
  } else if (criteri1<15&&criteri1>5) {
    shape(modul2bi, posx+30, posy);
  } else {
    shape(modul2ple, posx+30, posy);
  }


  fill( valorB, 50, 100);
  if (criteri1>15) {
    shape(modul2inv, posx+30, posy+90);
  } else if (criteri1<5) {
    shape(modul2invbi, posx+30, posy+90);
  } else {
    shape(modul2invple, posx+30, posy+90);
  }


  //E
  fill( valorA, 100, 100);
  if (criteri2>185) {
    shape(modul1x6, posx+270, posy);
  } else {
    shape(modul1x6bi, posx+270, posy);
  }

  fill( valorA, 60, 100);
  if (criteri2>185) {
    shape(modul1x2, posx+300, posy);
  } else {
    shape(modul1x2bi, posx+300, posy);
  }

  if (criteri2<185) {
    shape(modul1x2, posx+300, posy+60);
  } else {
    shape(modul1x2bi, posx+300, posy+60);
  }

  if (criteri2<185) {
    shape(modul1x2, posx+300, posy+150);
  } else {
    shape(modul1x2bi, posx+300, posy+150);
  }


  //M
  fill( valorA, 100, 100);
  if (criteri2<185) {
    shape(modul1x6, posx+470, posy);
  } else {
    shape(modul1x6bi, posx+470, posy);
  }

  fill( valorA, 50, 100);
  if (criteri3<70) {
    shape(modul4, posx+500, posy);
  } else if (criteri3>70&&criteri3<85) {
    shape(modul4bi, posx+500, posy);
  } else {
    shape(modul4ple, posx+500, posy);
  }
  fill( valorA, 50, 100);
  if (criteri2<185) {
    shape(modul1, posx+545, posy+60);
  } else {
    shape(modul1bi, posx+545, posy+60);
  }

  fill( valorB, 50, 100);
  if (criteri3>85) {
    shape(modul4inv, posx+575, posy);
  } else if (criteri3<70) {
    shape(modul4invbi, posx+575, posy);
  } else {
    shape(modul4invple, posx+575, posy);
  }

  fill( valorA, 100, 100);
  if (criteri2>185) {
    shape(modul1x6, posx+620, posy);
  } else {
    shape(modul1x6bi, posx+620, posy);
  }


  //O
  fill( valorA, 50, 100);
  if (criteri3<70) {
    shape(modul3, posx+740, posy);
  } else if (criteri3>70&&criteri3<85) {
    shape(modul3bi, posx+740, posy);
  } else {
    shape(modul3ple, posx+740, posy);
  }

  fill( valorB, 50, 100);
  if (criteri3>85) {
    shape(modul3inv, posx+740, posy+90);
  } else if (criteri3<70) {
    shape(modul3invbi, posx+740, posy+90);
  } else {
    shape(modul3invple, posx+740, posy+90);
  }

  fill( valorA, 50, 100);
  if (criteri1>15) {
    shape(modul2, posx+800, posy);
  } else if (criteri1<5) {
    shape(modul2bi, posx+800, posy);
  } else {
    shape(modul2ple, posx+800, posy);
  }

  fill( valorB, 50, 100);
  if (criteri1<5) {
    shape(modul2inv, posx+800, posy+90);
  } else if (criteri1<15&&criteri1>5) {
    shape(modul2invbi, posx+800, posy+90);
  } else {
    shape(modul2invple, posx+800, posy+90);
  }
}

void keyPressed() {  
  if (key == 'z') {
    guardar=true;
    save("hsb_test_"+frameCount+".png");
  }
  if (key == 'p') {
    background(50);
  }
}

