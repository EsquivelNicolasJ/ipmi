// Nicolas Javier Esquivel - IPMI - Comision 1 - tp3
//Link Youtube: https://youtu.be/dRpWTh3SYQA

PImage Foto;
boolean Negro, Blanco;
int EjeX, EjeY;
color blanco, negro;

void setup() {
  Foto = loadImage("Foto.jpg");
  size(800, 400);
  EjeX = 200;
  EjeY = 200;
  blanco = color(255);
  negro = color(0);
  noLoop();
}

void draw() { 
  float d = dist(mouseX, mouseY, width/2, height/2);
  float intensidad = map(d, 0, width/2, 255, 0);
  negro = color(intensidad, 0, 0);

  image(Foto, 0, 0, 400, 400);
  translate(400, 0);
  rectMode(CENTER);

  for (int i = 400; i >= 50; i -= 29) {
    if (Negro) {
      fill(blanco);
    } else {
      fill(negro);
    }
    rect(EjeX, EjeY, i, i);
    Negro = !Negro;
  }

  for (int x = 5; x <= 170 - 15; x += 15) {
    if (Blanco) {
      fill(negro);
    } else {
      fill(blanco);
    }
    noStroke();
    rect(x, EjeY, 15, 79);
    Blanco = !Blanco;
  }

  for (int x = 247; x <= 495 - 15; x += 15) {
    if (Blanco) {
      fill(blanco);
    } else {
      fill(negro);
    }
    noStroke();
    rect(x, EjeY, 15, 79);
    Blanco = !Blanco;
  }

  for (int y = 5; y <= 170 - 15; y += 15) {
    if (Blanco) {
      fill(blanco);
    } else {
      fill(negro);
    }
    noStroke();
    rect(EjeX, y, 79, 15);
    Blanco = !Blanco;
  }

  for (int y = 395; y >= 245; y -= 15) {
    if (Blanco) {
      fill(negro);
    } else {
      fill(blanco);
    }
    noStroke();
    rect(EjeX, y, 80, 15);
    Blanco = !Blanco;
  }

  for (int i = 80; i >= 25; i -= 27) {
    if (Negro) {
      fill(negro);
    } else {
      fill(blanco);
    }
    rect(EjeX, EjeY, i, i);
    Negro = !Negro;
  }
}

void mousePressed() {
  negro = color(255, 0, 0);
  blanco = color(0, 255, 0);
  Negro = false;
  Blanco = false;
  redraw();
}

void keyPressed() {
  if (key == 'n' || key == 'N') {
    blanco = color(255);
    negro = color(0);
    Negro = false;
    Blanco = false;
    redraw();
  }
}
