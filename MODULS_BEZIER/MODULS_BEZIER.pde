float posx = 15;
float posy = 15;

void setup() {
  background(255);
  size(1000, 500);
  smooth();
}

void draw() {
  fill(255, 0, 0);
  stroke(1);
  scale(3);


  //D
  //MODUL1
  //1
  beginShape();
  vertex(posx+0, posy+0);
  vertex(posx+10, posy+0);
  vertex(posx+10, posy+30);
  vertex(posx+0, posy+30);
  endShape(CLOSE);

  //2
  beginShape();
  vertex(posx+0, posy+0);
  vertex(posx+3.4, posy+0);
  vertex(posx+3.4, posy+30);
  vertex(posx+0, posy+30);
  endShape(CLOSE);
  beginShape();
  vertex(posx+6.6, posy+0);
  vertex(posx+10, posy+0);
  vertex(posx+10, posy+30);
  vertex(posx+6.6, posy+30);
  endShape(CLOSE);


  //MODUL2
  //1
  beginShape();
  vertex(posx+0, posy+30);
  vertex(posx+10, posy+30);
  vertex(posx+10, posy+60);
  vertex(posx+0, posy+60);
  endShape(CLOSE);

  //2
  beginShape();
  vertex(posx+0, posy+30);
  vertex(posx+3.4, posy+30);
  vertex(posx+3.4, posy+60);
  vertex(posx+0, posy+60);
  endShape(CLOSE);
  beginShape();
  vertex(posx+6.6, posy+30);
  vertex(posx+10, posy+30);
  vertex(posx+10, posy+60);
  vertex(posx+6.6, posy+60);
  endShape(CLOSE);


  //MODUL_3
  //PLE
  beginShape();
  vertex(posx+10, posy+1.7);
  bezierVertex(posx+13.1, posy+0.6, posx+16.5, posy+0, posx+20, posy+0);
  bezierVertex(posx+36.6, posy+0, posx+50, posy+13.4, posx+50, posy+30);
  vertex(posx+40, posy+30);
  vertex(posx+10, posy+30);
  endShape(CLOSE);

  //MIG
  beginShape();
  vertex(posx+10, posy+1.7);
  bezierVertex(posx+13.1, posy+0.6, posx+16.5, posy+0, posx+20, posy+0);
  bezierVertex(posx+36.6, posy+0, posx+50, posy+13.4, posx+50, posy+30);
  vertex(posx+40, posy+30);
  bezierVertex(posx+40, posy+18.9, posx+31.1, posy+10, posx+20, posy+10);
  bezierVertex(posx+16.4, posy+10, posx+12.9, posy+10, posx+10, posy+12.7);
  endShape(CLOSE);

  //BI
  fill(0, 0, 255);
  beginShape();
  vertex(posx+10, posy+1.7);
  bezierVertex(posx+13.1, posy+0.6, posx+16.5, posy+0, posx+20, posy+0);
  bezierVertex(posx+36.6, posy+0, posx+50, posy+13.4, posx+50, posy+30);
  vertex(posx+46.7, posy+30);
  bezierVertex(posx+46.7, posy+15.3, posx+35.7, posy+3.3, posx+20, posy+3.3);
  bezierVertex(posx+16.4, posy+3.3, posx+13.1, posy+4, posx+10, posy+5.3);
  endShape(CLOSE);

  beginShape();
  vertex(posx+10, posy+8.9);
  bezierVertex(posx+13.1, posy+7.5, posx+16.4, posy+6.6, posx+20, posy+6.6);
  bezierVertex(posx+32.9, posy+6.6, posx+43.4, posy+17.1, posx+43.4, posy+30);
  vertex(posx+40, posy+30);
  bezierVertex(posx+40, posy+18.9, posx+31.1, posy+10, posx+20, posy+10);
  bezierVertex(posx+16.4, posy+10, posx+12.9, posy+10, posx+10, posy+12.7);
  endShape(CLOSE);


  //MODUL_4
  //PLE
  beginShape();
  vertex(posx+10, posy+58.3);
  bezierVertex(posx+13.1, posy+59.4, posx+16.5, posy+60, posx+20, posy+60);
  bezierVertex(posx+36.6, posy+60, posx+50, posy+46.6, posx+50, posy+30);
  vertex(posx+40, posy+30);
  vertex(posx+10, posy+30);
  endShape(CLOSE);

  //MIG
  beginShape();
  vertex(posx+10, posy+58.3);
  bezierVertex(posx+13.1, posy+59.4, posx+16.5, posy+60, posx+20, posy+60);
  bezierVertex(posx+36.6, posy+60, posx+50, posy+46.6, posx+50, posy+30);
  vertex(posx+40, posy+30);
  bezierVertex(posx+40, posy+41.1, posx+31.1, posy+50, posx+20, posy+50);
  bezierVertex(posx+16.4, posy+50, posx+12.9, posy+50, posx+10, posy+47.3);
  endShape(CLOSE);

  //BI
  fill(0, 250, 0);
  beginShape();
  vertex(posx+10, posy+58.3);
  bezierVertex(posx+13.1, posy+59.4, posx+16.5, posy+60, posx+20, posy+60);
  bezierVertex(posx+36.6, posy+60, posx+50, posy+46.6, posx+50, posy+30);
  vertex(posx+46.7, posy+30);
  bezierVertex(posx+46.7, posy+44.7, posx+35.7, posy+56.7, posx+20, posy+56.7);
  bezierVertex(posx+16.4, posy+56.7, posx+13.1, posy+56, posx+10, posy+54.7);
  endShape(CLOSE);

  beginShape();
  vertex(posx+10, posy+51.1);
  bezierVertex(posx+13.1, posy+52.5, posx+16.4, posy+53.4, posx+20, posy+53.4);
  bezierVertex(posx+32.9, posy+53.4, posx+43.4, posy+42.9, posx+43.4, posy+30);
  vertex(posx+40, posy+30);
  bezierVertex(posx+40, posy+41.9, posx+31.1, posy+50, posx+20, posy+50);
  bezierVertex(posx+16.4, posy+50, posx+12.9, posy+50, posx+10, posy+47.3);
  endShape(CLOSE);



  //E
  //MODUL_5
  //VERT
  beginShape();
  vertex(posx+70, posy+0);
  vertex(posx+80, posy+0);
  vertex(posx+80, posy+60);
  vertex(posx+70, posy+60);
  endShape(CLOSE);

  //BI
  fill(255, 0, 0);
  beginShape();
  vertex(posx+70, posy+0);
  vertex(posx+73.3, posy+0);
  vertex(posx+73.3, posy+60);
  vertex(posx+70, posy+60);
  endShape(CLOSE);
  beginShape();
  vertex(posx+76.6, posy+0);
  vertex(posx+80, posy+0);
  vertex(posx+80, posy+60);
  vertex(posx+76.6, posy+60);
  endShape(CLOSE);


  //MODUL_6
  //MIG
  beginShape();
  vertex(posx+80, posy+0);
  vertex(posx+100, posy+0);
  vertex(posx+100, posy+10);
  vertex(posx+80, posy+10);
  endShape(CLOSE);

  //BI
  beginShape();
  vertex(posx+80, posy+0);
  vertex(posx+100, posy+0);
  vertex(posx+100, posy+3.4);
  vertex(posx+80, posy+3.4);
  endShape(CLOSE);
  beginShape();
  vertex(posx+80, posy+6.6);
  vertex(posx+100, posy+6.6);
  vertex(posx+100, posy+10);
  vertex(posx+80, posy+10);
  endShape(CLOSE);


  //MODUL_7
  beginShape();
  vertex(posx+80, posy+20);
  vertex(posx+100, posy+20);
  vertex(posx+100, posy+30);
  vertex(posx+80, posy+30);
  endShape(CLOSE);

  //BI
  beginShape();
  vertex(posx+80, posy+20);
  vertex(posx+100, posy+20);
  vertex(posx+100, posy+23.4);
  vertex(posx+80, posy+23.4);
  endShape(CLOSE);
  beginShape();
  vertex(posx+80, posy+26.6);
  vertex(posx+100, posy+26.6);
  vertex(posx+100, posy+30);
  vertex(posx+80, posy+30);
  endShape(CLOSE);


  //MODUL_8
  beginShape();
  vertex(posx+80, posy+50);
  vertex(posx+100, posy+50);
  vertex(posx+100, posy+60);
  vertex(posx+80, posy+60);
  endShape(CLOSE);

  //BI
  beginShape();
  vertex(posx+80, posy+50);
  vertex(posx+100, posy+50);
  vertex(posx+100, posy+53.4);
  vertex(posx+80, posy+53.4);
  endShape(CLOSE);
  beginShape();
  vertex(posx+80, posy+56.6);
  vertex(posx+100, posy+56.6);
  vertex(posx+100, posy+60);
  vertex(posx+80, posy+60);
  endShape(CLOSE);



  //M
  //MODUL_9
  //MIG
  beginShape();
  vertex(posx+130, posy+0);
  vertex(posx+140, posy+0);
  vertex(posx+140, posy+60);
  vertex(posx+130, posy+60);
  endShape(CLOSE);

  //BI
  fill(255, 0, 0);
  beginShape();
  vertex(posx+130, posy+0);
  vertex(posx+133.4, posy+0);
  vertex(posx+133.4, posy+60);
  vertex(posx+130, posy+60);
  endShape(CLOSE);
  beginShape();
  vertex(posx+136.6, posy+0);
  vertex(posx+140, posy+0);
  vertex(posx+140, posy+60);
  vertex(posx+136.6, posy+60);
  endShape(CLOSE);


  //MODUL_10
  //PLE
  beginShape();
  vertex(posx+140, posy+0);
  vertex(posx+145.60, posy+0);
  vertex(posx+155, posy+20);
  vertex(posx+155, posy+30);
  vertex(posx+149.4, posy+30);
  vertex(posx+140, posy+30);
  endShape(CLOSE);

  //MIG
  beginShape();
  vertex(posx+140, posy+0);
  vertex(posx+145.60, posy+0);
  vertex(posx+155, posy+20);
  vertex(posx+155, posy+30);
  vertex(posx+149.4, posy+30);
  vertex(posx+140, posy+11.2);
  endShape(CLOSE);

  //BI
  fill(0, 250, 0);
  beginShape();
  vertex(posx+141.8, posy+0);
  vertex(posx+145.5, posy+0);
  vertex(posx+155, posy+20);
  vertex(posx+155, posy+26.3);
  endShape(CLOSE);
  beginShape();
  vertex(posx+140, posy+3.7);
  vertex(posx+153.1, posy+30);
  vertex(posx+149.4, posy+30);
  vertex(posx+140, posy+11.2);
  endShape(CLOSE);


  //MODUL_11
  //MIG
  beginShape();
  vertex(posx+155, posy+20);
  vertex(posx+165, posy+20);
  vertex(posx+165, posy+30);
  vertex(posx+155, posy+30);
  endShape(CLOSE);

  //BI
  fill(0, 0, 250);
  beginShape();
  vertex(posx+155, posy+20);
  vertex(posx+165, posy+20);
  vertex(posx+165, posy+23.4);
  vertex(posx+155, posy+23.4);
  endShape(CLOSE);
  beginShape();
  vertex(posx+155, posy+26.3);
  vertex(posx+165, posy+26.3);
  vertex(posx+165, posy+30);
  vertex(posx+155, posy+30);
  endShape(CLOSE);


  //MODUL_12
  //PLE
  beginShape();
  vertex(posx+165, posy+20);
  vertex(posx+174.4, posy+0);
  vertex(posx+180, posy+0);
  vertex(posx+180, posy+30);
  vertex(posx+165, posy+30);
  endShape(CLOSE);

  //MIG
  beginShape();
  vertex(posx+165, posy+20);
  vertex(posx+174.4, posy+0);
  vertex(posx+180, posy+0);
  vertex(posx+180, posy+11.2);
  vertex(posx+170.6, posy+30);
  vertex(posx+165, posy+30);
  endShape(CLOSE);

  //BI
  fill(0, 250, 0);
  beginShape();
  vertex(posx+165, posy+20);
  vertex(posx+174.4, posy+0);
  vertex(posx+178.2, posy+0);
  vertex(posx+165, posy+26.3);
  endShape(CLOSE);
  beginShape();
  vertex(posx+166.9, posy+30);
  vertex(posx+170.6, posy+30);
  vertex(posx+180, posy+11.2);
  vertex(posx+180, posy+3.7);
  endShape(CLOSE);


  //MODUL_13
  //MIG
  beginShape();
  vertex(posx+180, posy+0);
  vertex(posx+190, posy+0);
  vertex(posx+190, posy+60);
  vertex(posx+180, posy+60);
  endShape(CLOSE);

  //BI
  fill(255, 0, 0);
  beginShape();
  vertex(posx+180, posy+0);
  vertex(posx+183.4, posy+0);
  vertex(posx+183.4, posy+60);
  vertex(posx+180, posy+60);
  endShape(CLOSE);
  beginShape();
  vertex(posx+186.6, posy+0);
  vertex(posx+190, posy+0);
  vertex(posx+190, posy+60);
  vertex(posx+186.6, posy+60);
  endShape(CLOSE);



  //O
  //MODUL_14
  //PLE
  beginShape();
  vertex(posx+210, posy+30);
  bezierVertex(posx+210, posy+16.9, posx+218.4, posy+5.8, posx+230, posy+1.7);
  vertex(posx+230, posy+30);
  endShape(CLOSE);

  //MIG
  beginShape();
  vertex(posx+210, posy+30);
  bezierVertex(posx+210, posy+16.9, posx+218.4, posy+5.8, posx+230, posy+1.7);
  vertex(posx+230, posy+12.7);
  bezierVertex(posx+224, posy+16.1, posx+220, posy+22.6, posx+220, posy+30);
  endShape(CLOSE);

  //BI
  beginShape();
  vertex(posx+210, posy+30);
  bezierVertex(posx+210, posy+16.9, posx+218.4, posy+5.8, posx+230, posy+1.7);
  vertex(posx+230, posy+5.3);
  bezierVertex(posx+220.3, posy+9.2, posx+213.4, posy+17.8, posx+213.4, posy+30);
  endShape(CLOSE);
  beginShape();
  vertex(posx+216.7, posy+30);
  bezierVertex(posx+216.7, posy+20.7, posx+222.2, posy+12.7, posx+230, posy+8.9);
  vertex(posx+230, posy+12.7);
  bezierVertex(posx+224, posy+16.1, posx+220, posy+22.6, posx+220, posy+30);
  endShape(CLOSE);


  //MODUL_15
  //PLE
  beginShape();
  vertex(posx+210, posy+30);
  bezierVertex(posx+210, posy+43.1, posx+218.4, posy+54.2, posx+230, posy+58.3);
  vertex(posx+230, posy+30);
  endShape(CLOSE);

  //MIG
  beginShape();
  vertex(posx+210, posy+30);
  bezierVertex(posx+210, posy+43.1, posx+218.4, posy+54.2, posx+230, posy+58.3);
  vertex(posx+230, posy+47.3);
  bezierVertex(posx+224, posy+43.9, posx+220, posy+37.4, posx+220, posy+30);
  endShape(CLOSE);

  //BI
  beginShape();
  vertex(posx+210, posy+30);
  bezierVertex(posx+210, posy+43.1, posx+218.4, posy+54.2, posx+230, posy+58.3);
  vertex(posx+230, posy+54.7);
  bezierVertex(posx+220.3, posy+50.8, posx+213.4, posy+42.2, posx+213.4, posy+30);
  endShape(CLOSE);
  beginShape();
  vertex(posx+216.7, posy+30);
  bezierVertex(posx+216.7, posy+39.3, posx+222.2, posy+47.3, posx+230, posy+51.1);
  vertex(posx+230, posy+47.3);
  bezierVertex(posx+224, posy+43.9, posx+220, posy+37.4, posx+220, posy+30);
  endShape(CLOSE);


  //MODUL_16
  //PLE
  beginShape();
  vertex(posx+230, posy+1.7);
  bezierVertex(posx+233.1, posy+0.6, posx+236.5, posy+0, posx+240, posy+0);
  bezierVertex(posx+256.6, posy+0, posx+270, posy+13.4, posx+270, posy+30);
  vertex(posx+260, posy+30);
  vertex(posx+230, posy+30);
  endShape(CLOSE);

  //MIG
  noFill();
  beginShape();
  vertex(posx+230, posy+1.7);
  bezierVertex(posx+233.1, posy+0.6, posx+236.5, posy+0, posx+240, posy+0);
  bezierVertex(posx+256.6, posy+0, posx+270, posy+13.4, posx+270, posy+30);
  vertex(posx+260, posy+30);
  bezierVertex(posx+260, posy+18.9, posx+251.1, posy+10, posx+240, posy+10);
  bezierVertex(posx+236.4, posy+10, posx+232.9, posy+10, posx+230, posy+12.7);
  endShape(CLOSE);

  //BI
  noFill();
  beginShape();
  vertex(posx+230, posy+1.7);
  bezierVertex(posx+233.1, posy+0.6, posx+236.5, posy+0, posx+240, posy+0);
  bezierVertex(posx+256.6, posy+0, posx+270, posy+13.4, posx+270, posy+30);
  vertex(posx+266.7, posy+30);
  bezierVertex(posx+266.7, posy+15.3, posx+255.7, posy+3.3, posx+240, posy+3.3);
  bezierVertex(posx+236.4, posy+3.3, posx+233.1, posy+4, posx+230, posy+5.3);
  endShape(CLOSE);

  beginShape();
  vertex(posx+230, posy+8.9);
  bezierVertex(posx+233.1, posy+7.5, posx+236.4, posy+6.6, posx+240, posy+6.6);
  bezierVertex(posx+252.9, posy+6.6, posx+263.4, posy+17.1, posx+263.4, posy+30);
  vertex(posx+260, posy+30);
  bezierVertex(posx+260, posy+18.9, posx+251.1, posy+10, posx+240, posy+10);
  bezierVertex(posx+236.4, posy+10, posx+232.9, posy+10, posx+230, posy+12.7);
  endShape(CLOSE);


  //MODUL_17
  //PLE
  beginShape();
  vertex(posx+230, posy+58.3);
  bezierVertex(posx+233.1, posy+59.4, posx+236.5, posy+60, posx+240, posy+60);
  bezierVertex(posx+256.6, posy+60, posx+270, posy+46.6, posx+270, posy+30);
  vertex(posx+260, posy+30);
  vertex(posx+230, posy+30);
  endShape(CLOSE);

  //MIG
  beginShape();
  vertex(posx+230, posy+58.3);
  bezierVertex(posx+233.1, posy+59.4, posx+236.5, posy+60, posx+240, posy+60);
  bezierVertex(posx+256.6, posy+60, posx+270, posy+46.6, posx+270, posy+30);
  vertex(posx+260, posy+30);
  bezierVertex(posx+260, posy+41.1, posx+251.1, posy+50, posx+240, posy+50);
  bezierVertex(posx+236.4, posy+50, posx+232.9, posy+50, posx+230, posy+47.3);
  endShape(CLOSE);

  //BI
  fill(0, 250, 0);
  beginShape();
  vertex(posx+230, posy+58.3);
  bezierVertex(posx+233.1, posy+59.4, posx+236.5, posy+60, posx+240, posy+60);
  bezierVertex(posx+256.6, posy+60, posx+270, posy+46.6, posx+270, posy+30);
  vertex(posx+266.7, posy+30);
  bezierVertex(posx+266.7, posy+44.7, posx+255.7, posy+56.7, posx+240, posy+56.7);
  bezierVertex(posx+236.4, posy+56.7, posx+233.1, posy+56, posx+230, posy+54.7);
  endShape(CLOSE);

  beginShape();
  vertex(posx+230, posy+51.1);
  bezierVertex(posx+233.1, posy+52.5, posx+236.4, posy+53.4, posx+240, posy+53.4);
  bezierVertex(posx+252.9, posy+53.4, posx+263.4, posy+42.9, posx+263.4, posy+30);
  vertex(posx+260, posy+30);
  bezierVertex(posx+260, posy+41.9, posx+251.1, posy+50, posx+240, posy+50);
  bezierVertex(posx+236.4, posy+50, posx+232.9, posy+50, posx+230, posy+47.3);
  endShape(CLOSE);
}

