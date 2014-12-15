PShape modul1;
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


void setup(){
  size(1400,900);
  smooth();
  modul1 = loadShape("modul1.svg");
  modul2 = loadShape("modul2.svg");
  modul2inv = loadShape("modul2inv.svg");
  modul3 = loadShape("modul3.svg");
  modul3inv = loadShape("modul3inv.svg");
  modul4 = loadShape("modul4.svg");
  modul4inv = loadShape("modul4inv.svg");
  background(0,0,255);
}

void draw(){
  //background(0,0,255);
  modul1.disableStyle();
  modul2.disableStyle();
  modul2inv.disableStyle();
  modul3.disableStyle();
  modul3inv.disableStyle();
  modul4.disableStyle();
  modul4inv.disableStyle();
  
  stroke(200,200,0);
  strokeWeight(1);
  fill(0,0,250);
  
  //D
  for (int i = 0; i<510; i+=100){
  shape(modul1, mouseX,i+mouseY);
  }
  shape(modul2, 100+mouseX,mouseY);
  shape(modul2inv, 100+mouseX,300+mouseY);
  
  //E
  for (int i = 0; i<510; i+=100){
  shape(modul1, 600+mouseX,i+mouseY);
  }
  shape(modul1, 700+mouseX,mouseY);
  shape(modul1, 800+mouseX,mouseY);
  shape(modul1, 700+mouseX,200+mouseY);
  shape(modul1, 800+mouseX,200+mouseY);
  shape(modul1, 700+mouseX,500+mouseY);
  shape(modul1, 800+mouseX,500+mouseY);
  
  //M
  for (int i = 0; i<510; i+=100){
  shape(modul1, 1000+mouseX,i+mouseY);
  }
  shape(modul4, 1100+mouseX, mouseY);
  shape(modul1, 1250+mouseX, 200+mouseY);
  shape(modul4inv, 1350+mouseX, mouseY);
  for (int i = 0; i<510; i+=100){
  shape(modul1, 1500+mouseX,i+mouseY);
  }
  
  //O
  shape(modul3, 1800+mouseX,mouseY);
  shape(modul3inv, 1800+mouseX, 300+mouseY);
  shape(modul2, 2000+mouseX, mouseY);
  shape(modul2inv, 2000+mouseX, 300+mouseY);
  
  
}

  
  

