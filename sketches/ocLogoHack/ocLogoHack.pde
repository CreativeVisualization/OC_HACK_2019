// ocLogoHack2019.pde

int r = 350;
float x,y;

boolean lorc;
int angle;

int frmN = 0;
float fR = 60;
float ltocSecond = 3;
float ltocFrame;

float[][] inner = {
	{211,115},
	{378,135},
	{498,75},
	{529,145},
	{689,83},
	{607,321},
	{786,316},
	{738,480},
	{825,699},
	{734,707},
	{667,1021},
	{547,921},
	{362,1043},
	{293,922},
	{113,863},
	{198,701},
	{86,606},
	{168,491},
	{61,309},
	{197,224}
};
float[][] cirVrtx = new float[40][2];
float[][] shape		= new float[40][2];
float[][] ltoc		= new float[40][2];

void setup() {
	size(900, 1100);
	colorMode(HSB);
	frameRate(fR);
	ltocFrame = fR * ltocSecond;

	for (int i = 0; i < 360; i += 9) {
		angle = i + 250;
		float theta = radians(angle);
		x = r * cos(theta);
		y = r * sin(theta);

		int vn = i / 9;
		cirVrtx[vn][0] = x + width / 2;
		cirVrtx[vn][1] = y + height / 2;

		if(vn % 2 == 1){
			if(vn != cirVrtx.length - 1){
				float cntrPointX = abs(inner[vn/2][0] + inner[vn/2+1][0]) / 2;
				float cntrPointY = abs(inner[vn/2][1] + inner[vn/2+1][1]) / 2;
				shape[vn][0] = cntrPointX;
				shape[vn][1] = cntrPointY;
			}else{
				float cntrPointX = abs(inner[inner.length-1][0] + inner[0][0]) / 2;
				float cntrPointY = abs(inner[inner.length-1][1] + inner[0][1]) / 2;
				shape[cirVrtx.length-1][0] = cntrPointX;
				shape[cirVrtx.length-1][1] = cntrPointY;
			}
		}else{
			shape[vn][0] = inner[vn/2][0];
			shape[vn][1] = inner[vn/2][1];
		}
		ltoc[vn][0] = (shape[vn][0] - cirVrtx[vn][0]) / ltocFrame;
		ltoc[vn][1] = (shape[vn][1] - cirVrtx[vn][1]) / ltocFrame;
	}
}

void draw() {
	background(153);

	int innerColorH = floor(random(0,255));
	int innerColorS = 92;
	int innerColorB = 242;
	fill(innerColorH,innerColorS,innerColorB);

	noStroke();
	beginShape();
	for (int i = 0; i < 20; i++) {
		vertex(inner[i][0]-random(-50,50),inner[i][1]-random(-50,50));
	}
	endShape(CLOSE);

	noFill();
	stroke(0);
	strokeWeight(70);
	strokeJoin(ROUND);
	beginShape();
	for (int i = 0; i < 40; i++) {
		if(frmN > ltocFrame){
			for (int j = 0; j < 40; j++) {
				ltoc[j][0] = -ltoc[j][0];
				ltoc[j][1] = -ltoc[j][1];
			}
			lorc = !lorc;
			frmN = 0;
		}
		shape[i][0] -= ltoc[i][0];
		shape[i][1] -= ltoc[i][1];
		vertex(shape[i][0],shape[i][1]);
	}
	endShape(CLOSE);

	credit(false,innerColorH,innerColorS,innerColorB);

	frmN++;
}


void credit(boolean n, int h, int s, int b){
	String statement 		= "堀井 野の花";
	String motionDesign = "米澤 柊";
	String coding 			=	"akisoqls";
	stroke(h,s,b);
	if (n){
		text(
			"statement : \"" + statement +
			"\"\nmotionDesign : \"" + motionDesign +
			"\"\ncoding : \"" + coding +  "\"",
			width-150, height - 35);
	}
}
