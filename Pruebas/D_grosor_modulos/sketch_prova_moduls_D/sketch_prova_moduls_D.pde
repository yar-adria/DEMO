// D, construida de modulos, varia grosor con limites.


int var1= 5;
int var2= 5;
int var3= 5;

void setup(){
   size(1000,800);
   smooth();
   background(255);
}

void draw(){
  background(255);
  noFill();
  strokeCap(PROJECT);
  
  var1 = 5+mouseX/3;
  if (var1 > 80){
   var1 = 80;
  } 

//asta
strokeWeight(var1);
beginShape();
vertex(220,170);
vertex(220,630);
endShape();

var2 = 5+mouseY/3;
  if (var2 > 80){
   var2 = 80;
  }
//superior
strokeWeight(var2);
beginShape();
vertex(220,170);
bezierVertex(251,158,284,150,320,150);
bezierVertex(458,150,570,262,570,400);
endShape();


//inferior
strokeWeight(var3);
beginShape();
vertex(220,630);
bezierVertex(251,648,284,650,320,650);
bezierVertex(458,650,570,548,570,400);
endShape();

}

void mousePressed() {
  var3 = var3 + 10;
  if(var3 > 90){
    var3 = 5;
  }
}



