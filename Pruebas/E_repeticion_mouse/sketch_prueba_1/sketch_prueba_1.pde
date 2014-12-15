int x = 0;
int y = 0;

void setup(){size(400,400);
}
void draw(){
beginShape();
vertex(x+20,y+20);
vertex(x+80,y+20);
vertex(x+80,y+40);
vertex(x+40,y+40);
vertex(x+40,y+60);
vertex(x+80,y+60);
vertex(x+80,y+80);
vertex(x+40,y+80);
vertex(x+40,y+120);
vertex(x+80,y+120);
vertex(x+80,y+140);
vertex(x+20,y+140);
vertex(x+20,y+20);
endShape();
x=mouseX;
y=mouseY;

}

