// OChack2019 Tama Art University
//author akisoqls,NH

float x=random(100,300);
float y=random(20,200);
float x1=random(400,600);
float y1=random(20,150);
float x2=random(550,750);
float y2=random(20,150);
float x3=random(600,900);
float y3=random(250,400);
float x4=random(700,900);
float y4=random(550,750);
float x5=random(550,800);
float y5=random(900,1150);
float x6=random(200,500);
float y6=random(900,1200);
float x7=random(50,250);
float y7=random(700,950);
float x8=random(20,200);
float y8=random(500,750);
float x9=random(10,180);
float y9=random(200,450);

float[][] shape = {
	{x,y},{378,135},{x1,y1},{529,145},
  {x2,y2},{607,321},{x3,y3},{738,480},
  {x4,y4},{734,707},{x5,y5},{547,921}
 ,{x6,y6},{293,922},{x7,y7},{198,701}
 ,{x8,y8},{168,491},{x9,y9},{197,224}
};

color outerColor = color(0,0,0);

float h=random(0,255);
float s=random(0,255);
float b=random(0,255);


color innerColor = color(h, s, b);


void setup() {
	
	size(900, 1100);
	
	colorMode(HSB);

}

void draw() {
	
	background(153);
	pushMatrix();
	translate(0, 0);
	popMatrix();
	strokeJoin(ROUND);
	fill(innerColor);
	noStroke();
	beginShape();
	for (int i = 0; i < 20; i++) {
		vertex(shape[i][0], shape[i][1]);
	}
	endShape(CLOSE);

	noFill();
	stroke(0);
	beginShape();
	for (int i = 0; i < 20; i++) {
		strokeWeight(70);
		vertex(shape[i][0], shape[i][1]);
	}
	endShape(CLOSE);

eye(400,400);

}

void eye(int x,int y){
  strokeWeight(20);
  translate(x, y);
  float a = atan2(mouseY-height/2, mouseX-width/2);
  rotate(a);
  fill(255);
  ellipse(0,0,115,115);
  fill(0);
  stroke(145,150,255);
  strokeWeight(15);
  ellipse(10, 10, 50, 50);
}