PImage img;
int step;

void setup() {
  img = loadImage("fondo.png");
  size(img.width, img.height);
  smooth();
  imageMode(CENTER);
  doStuff();
}

void draw() {
  //doStuff();
  //if (frameCount<40) saveFrame("image-###.gif");
}

void mouseReleased() {
  doStuff();
}

void doStuff() {
  background(20);
  int c = 0;
  step = int(random(40, 80));
  for (int y=0; y<height; y+=step) {
    int p = 0;
    int r1=15, r2=30;
    step = int(random(5, 10));
    int start = y-int(random(r1, r2)) ;
    int end = y+step+int(random(r1, r2));
    PImage temp = createImage(width, end-start, RGB);
    for (int py=start; py<end; py++) {
      for (int x=0; x<width; x++) {
        temp.pixels[p]=img.get(x, py);
        p++;
      }
    }
    pushMatrix();
    translate(width/2, y+step/2);
    //float r = 10;
    //float rot = random(-radians(r), radians(r));
    //rotate(rot);
    if (c%2==0) {
      tint(#0000FF);
    } else {
      noTint();
    }
    image(temp, 0, 0);
    popMatrix();
    c++;
  }
}
