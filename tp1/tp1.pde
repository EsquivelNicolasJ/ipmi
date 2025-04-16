PImage Kenny;

void setup(){
Kenny=loadImage("Kenny.jpg");
  size(800,400);
 background(240);


}

void draw(){
 image(Kenny,0,0,400,400); 
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);


fill(237,95,0);
stroke(216,85,2);
strokeWeight(1);
bezier(509,255,445,348,508,336,522,345);


fill(237,95,0);
stroke(216,85,2);
strokeWeight(1);
bezier(691,255,756,367,688,329,688,330);


fill(237,95,0);
rect(508,260,185,93);


fill(237,95,0);
stroke(201,78,2);
strokeWeight(1);
circle(599,159,280);


stroke(0);
strokeWeight(2);
ellipse(597,169,195,172);


fill(103,65,41);
noStroke();
bezier(196+400,83,315+400,87,305+400,235,196+400,234);
bezier(196+400,83,315-228+400,87,305-225+400,238,196+400,234);


fill(255,227,183);
noStroke();
bezier(196+400,83,265+400,110,273+400,197,196+400,230);
bezier(196+400,83,265-145+400,110,273-152+400,197,196+400,230);


fill(255);
noStroke();
bezier(152+400,117,218+400,98,206+400,196,151+400,193);
bezier(152+400,117,136+400,137,132+400,172,152+400,193);


bezier(238+400,117,178+400,102,191+400,196,240+400,193);
bezier(238+400,117,255+400,139,256+400,170,240+400,193.0);


fill(0);
noStroke();
circle(171+400,153,10);
circle(221+400,153,10);


noFill();
stroke(165);
strokeWeight(1);
bezier(149+400,117,188+400,101,198+400,136,197+400,144);
bezier(239+400,117,208+400,105,198+400,136,197+400,144);


noFill();
stroke(75);
strokeWeight(1);
bezier(198+400,157,195+400,150,195+400,144,198+400,138);


fill(237,95,0);
rect(518,356,167,27);


fill(237,95,0);
stroke(201,78,2);
strokeWeight(1);
bezier(508,353,615,375,692,353,695,352);


stroke(0);
strokeWeight(3);
line(600,300,600,363);


noFill();
stroke(0);
strokeWeight(1);
bezier(512,328,513,312,513,312,518,300);


fill(103,65,41);
noStroke();
circle(492,335,43);


noFill();
stroke(0);
strokeWeight(1);
circle(505,329,17);


fill(103,65,41);
noStroke();
circle(708,335,43);

noFill
();
stroke(0);
strokeWeight(1);
circle(695,329,17);


noFill();
stroke(0);
strokeWeight(2);
bezier(595,232,611,250,593,264,606,283);


noFill();
stroke(0);
strokeWeight(2);
bezier(596,232,587,257,598,255,583,273);


noFill();
stroke(0);
strokeWeight(1);
bezier(686,328,686,314,686,314,680,300);


strokeWeight(5);
line(514,385,688,385);

}
