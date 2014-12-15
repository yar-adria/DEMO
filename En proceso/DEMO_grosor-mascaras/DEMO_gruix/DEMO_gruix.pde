PShape mascara1;
PShape mascara2;
PShape mascara3;
PShape mascara4;
PShape mascara5;
PShape mascara6;
PShape mascara7;
PShape mascara8;
PShape mascara9;
PShape mascara10;
PShape mascara11;
PShape mascara12;
PShape mascara13;
PShape mascara14;
PShape mascara15;
PShape mascara16;

void setup(){
size(1250,400);

mascara1 = loadShape("mascara1.svg");
mascara2 = loadShape("mascara2.svg");
mascara3 = loadShape("mascara3.svg");
mascara4 = loadShape("mascara4.svg");
mascara5 = loadShape("mascara5.svg");
mascara6 = loadShape("mascara6.svg");
mascara7 = loadShape("mascara7.svg");
mascara8 = loadShape("mascara8.svg");
mascara9 = loadShape("mascara9.svg");
mascara10 = loadShape("mascara10.svg");
mascara11 = loadShape("mascara11.svg");
mascara12 = loadShape("mascara12.svg");
mascara13 = loadShape("mascara13.svg");
mascara14 = loadShape("mascara14.svg");
mascara15 = loadShape("mascara15.svg");
mascara16 = loadShape("mascara16.svg");
}


void draw(){
  mascara1.disableStyle();
  mascara2.disableStyle();
  mascara3.disableStyle();
  mascara4.disableStyle();
  mascara5.disableStyle();
  mascara6.disableStyle();
  mascara7.disableStyle();
  mascara8.disableStyle();
  mascara9.disableStyle();
  mascara10.disableStyle();
  mascara11.disableStyle();
  mascara12.disableStyle();
  mascara13.disableStyle();
  mascara14.disableStyle();
  mascara15.disableStyle();
  mascara16.disableStyle();
  
  fill(0,0,255);
  noStroke();
  
  shape(mascara1, 0,0);
  shape(mascara2, 50,0);
  shape(mascara3, 50,175);
  
  
  
}
