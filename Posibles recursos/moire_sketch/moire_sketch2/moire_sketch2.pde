PShape moire1;
PShape moire2;

void setup(){
 size(800,800);
smooth();
moire1 = loadShape("moire1.svg");
moire2 = loadShape("moire2.svg");

}

void draw(){
  background(255);
  noStroke();
  moire1.disableStyle();
  moire2.disableStyle();
  fill(255,0,0);
  shape(moire1,100,100);
  fill(0,0,255);
  shape(moire2,mouseX,mouseY);
}
