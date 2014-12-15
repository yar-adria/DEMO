//recurso pendiente de pruebas


float mi = 100;
float distancia = 0;

void setup(){
  size(400,400);
}

void draw(){
  background(255);
  noStroke();
  fill(200,0,0);
  distancia= dist(mouseX,mouseY,200,200);
  mi = 2*distancia;
  ellipse(200,200,mi,mi);
}
