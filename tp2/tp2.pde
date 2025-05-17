// Nicolas J. Esquivel 

PImage Imagen1, MiaSeb, Foto2, Sebastian2, Sebastian, Mia1, Mia2, FotoFinal;
int segundos, PosXT, PosYT, PosXT2, PosYT2, SinopsisX, AnchoS, AltoS, PosYS, PosTextSY, AnchoM, AltoM, PosTextMX, PosXM, ConclusionY, CajaConclusionY;
float ColorTexto, TransparenciaTexto;
PFont Titulo, SubTitulo, Textos;
String Titulo1, Texto1, Sinopsis, Reinicio, Sebs, Mia, Conclusion;

void setup() {
  size(640, 480);
  
  Imagen1 = loadImage("Fondo.jpg");
  MiaSeb = loadImage("MiaSeb.png");
  Foto2 = loadImage("Foto2.jpg");
  Sebastian2 = loadImage("Sebastian2.jpg");
  Sebastian = loadImage("Sebastian.png");
  Mia1 = loadImage("Mia1.png");
  Mia2 = loadImage("Mia2.jpg");
  FotoFinal = loadImage("FotoFinal.jpg");
  Textos = loadFont("Textos.vlw");
SubTitulo = loadFont("SubTitulo.vlw"); 
 
 CajaConclusionY = 480;
 ConclusionY = 500;
   AnchoM = 295;
  AltoM = 390;
  PosTextMX = 450;
  PosXM = 430;
SinopsisX = 25;
AnchoS = 600;
AltoS = 155;
PosYS = 15;
PosTextSY = 35;
  ColorTexto = 255;
  TransparenciaTexto = 0;
  Titulo = loadFont("Titulo.vlw");
  Titulo1 = "LALA\nLAND";
  Texto1 = "Ciudad de Sueños";
  Reinicio = "Reiniciar";
  Sinopsis = "La La Land cuenta la historia de Mia y \nSebastian, dos soñadores\nen Los Ángeles que se enamoran \nmientras persiguen \nsus metas artísticas. Entre música, amor \ny decisiones difíciles, descubren que \na veces seguir tus \nsueños tiene un precio.";
  Sebs = "Sebastian (Ryan Gosling) es un pianista apasionado \npor el jazz clásico, soñador y obstinado. Vive luchando \npor mantener viva la esencia del jazz en un mundo que \nparece haberlo olvidado. Su gran sueño es abrir su \npropio club, donde la música tenga alma \ny libertad.";
  Mia = "Mia (Emma Stone) es una \naspirante a actriz llena de \nilusión y talento. Trabaja \ncomo barista en un \nestudio de cine mientras \nasiste a incontables \naudiciones, soñando \ncon encontrar su lugar en la \npantalla. \nSu pasión por contar \nhistorias la impulsa \nincluso cuando el rechazo \nparece no tener fin.";
  Conclusion = "Mia y Sebastian se enamoraron mientras seguían sus sueños pero la \nvida los llevó por caminos distintos. Termina con ambos separados \nmirándose por última vez, con una sonrisa que encierra todo lo que \nfue… y todo lo que ya no será.";
  
  PosXT = width / 4;
  PosYT = height / 2 +16;
PosXT2 = 217;
PosYT2 = 420;
}
void draw() {
  background(0);

  if (frameCount % 60 == 0) {
    segundos++;
  }

  if (segundos <= 6) {
    image(Imagen1, 0, 0, width, height);
    fill(255);  
    textFont(Titulo, 100);
    textSize(115);
   text(Titulo1, PosXT, PosYT);
   if(PosXT >5){
   PosXT -=2;
   }
    textFont(SubTitulo);
    textSize(25);
    text(Texto1, PosXT2, PosYT2);
    if(PosXT2 >25){
   PosXT2-=2;
   }
    
    image(MiaSeb, 0, 0, width, height);
    
 } else if (segundos <= 12) {
  image(Foto2, 0, 0, width, height); 
  textFont(Textos);
  textSize(20);
  text(Sinopsis, SinopsisX, 30);
  
  if (SinopsisX < 290) {
    SinopsisX += 1; 
  }
}

     else if (segundos <= 18) {
     image(Sebastian2, 0, 0, width, height);
   fill(0,127);
    noStroke();
    rect(15,PosYS,AnchoS,AltoS);
    
    fill(ColorTexto);
     textFont(Textos);
    textSize(20);
    text(Sebs,25,PosTextSY);
    
    image(Sebastian, 0, 0, width, height);
    
   if (PosYS < 150){
   PosYS += 1;
     }
     
     if (PosTextSY < 170){
     PosTextSY += 1;
     }
     
    
  } else if (segundos <= 24) {
    image(Mia2, 0, 0, width, height);
    noStroke();
    fill(0,127);
    rect(PosXM,25, AnchoM, AltoM);
    fill(ColorTexto);
    textFont(Textos);
    textSize(25);
    text(Mia,PosTextMX,50);
 
if (PosXM > 15) {
  PosXM -= 3; 
}
if (PosTextMX > 25) {
  PosTextMX -= 3;  
}
    
    
    image(Mia1, 0, 0, width, height);
    
  } else if (segundos <= 35) {
    image(FotoFinal, 0, 0, width, height);
   fill(0,127);
   noStroke();
   rect(25,CajaConclusionY,585,100);
   
    fill(ColorTexto);
    textFont(Textos);
    textSize(20);
    text(Conclusion, 35, ConclusionY);
    
    if(CajaConclusionY > 345){
    CajaConclusionY -=2;
    }
    if(ConclusionY >365){
    ConclusionY -=2;
    }
    
    
    float alpha = map(segundos, 30, 35, 0, 255); 
    fill(0, alpha);
    rect(0, 0, width, height);
  }

  if (segundos >= 36) {
    if (mouseX > 50 && mouseX < 150 && mouseY > 50 && mouseY < 100) {
      fill(255, 0, 0); 
    } else {
      fill(255); 
    }
    rect(50, 50, 100, 50);
    fill(0);
    textSize(16);
    text(Reinicio, 65, 80);
  }
}

void mousePressed() {
  if (segundos >= 36 && mouseX > 50 && mouseX < 150 && mouseY > 50 && mouseY < 100) {
    segundos = 0;

   PosXT = width / 4;
  PosYT = height / 2 +16;
    PosXT2 = 217;
    PosYT2 = 420;
    SinopsisX = 25;
    PosYS = 15;
    PosTextSY = 35;
    PosXM = 430;
    PosTextMX = 450;
    ConclusionY =365;
    CajaConclusionY=345;
  }
}
