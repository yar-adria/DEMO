PShape modul1;
PShape modul1x6;
PShape modul1x2;
PShape modul2;
PShape modul2inv;
PShape modul3;
PShape modul3inv;
PShape modul4;
PShape modul4inv;

int pos = 100;
int pos2 = 100*2;
int pos4 = 100*4;
float mov = random(-5,5);

float color1= 180;
float color2= 60;

void setup(){
  size(1200,800);
  smooth();
  colorMode(HSB,360,100,100);
  
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

  modul1.disableStyle();
  modul1x6.disableStyle();
  modul1x2.disableStyle();
  modul2.disableStyle();
  modul2inv.disableStyle();
  modul3.disableStyle();
  modul3inv.disableStyle();
  modul4.disableStyle();
  modul4inv.disableStyle();
  
  stroke(mouseX,255,255);
  strokeWeight(1);
  fill( color2,255,255);
  
  //D
 
  shape(modul1x6, mouseX, mouseY);
  shape(modul2, 10+mouseX, mouseY);
  shape(modul2inv, 10+mouseX,30+mouseY);
  
  //E
  
  shape(modul1x6, 60+mouseX,mouseY);
  shape(modul1x2, 70+mouseX,mouseY);
  shape(modul1x2, 70+mouseX,20+mouseY);
  shape(modul1x2, 70+mouseX,50+mouseY);
  
  
  //M
  
  shape(modul1x6, 100+mouseX,mouseY);
  shape(modul4, 110+mouseX, mouseY);
  shape(modul1, 125+mouseX, 20+mouseY);
  shape(modul4inv, 135+mouseX, mouseY);
  shape(modul1x6, 150+mouseX,mouseY);
  
  
  //O
  shape(modul3, 180+mouseX,mouseY);
  shape(modul3inv, 180+mouseX, 30+mouseY);
  shape(modul2, 200+mouseX, mouseY);
  shape(modul2inv, 200+mouseX, 30+mouseY);
  
  
}

  
  

