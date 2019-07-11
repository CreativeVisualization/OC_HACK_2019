
// OC LOGO ANIMATION, Tama Art University

float[][] outer = {
  {618.69, 417.09}, {728.15, 237.57}, {509.81, 292.39}, {646.16, 0.0}, {446.02, 152.01}, {438.73, 6.78}, {326.74, 134.18}, {144.47, 45.9}, {175.58, 209.37}, {0.0, 244.14}, {164.85, 426.16}, {22.34, 533.3}, {190.56, 595.32}, {43.76, 789.19}, {257.61, 773.35}, {303.77, 959.72}, {466.36, 774.31}, {602.29, 954.9}, {615.81, 595.92}, {770.0, 631.68}
};
float[][] inner = {
  {592.2, 418.0}, {684.25, 269.7}, {471.06, 324.86}, {592.02, 67.39}, {428.38, 193.}, {421.95, 59.68}, {333.35, 164.55}, {173.31, 83.53}, {202.61, 228.05}, {41.06, 257.7}, {197.14, 428.81}, {67.92, 525.8}, {223.35, 583.99}, {87.85, 763.07}, {274.54, 746.57}, {315.13, 913.37}, {467.13, 738.6}, {583.25, 894.16}, {593.85, 564.37}, {720.41, 598.34}
};

float[] XO = new float[20];
float[] YO = new float[20];

void setup() {
  size(900, 1100);
  background(255);
  colorMode(HSB, 360, 100, 100);
  frameRate(1);
}
void draw() {
  translate(65, 70);

  for (int i = 0; i < 20; i++) { 
    XO[i] = random(-30, 30);
    YO[i] = random(-30, 30);
  }

  fill(0);
  background(255);
  strokeWeight(40.0);
  strokeJoin(ROUND);

  beginShape();
  for (int i = 0; i < 20; i++) { 
    if (i % 2 == 1) {
      vertex(
        outer[i][0] + XO[i], 
        outer[i][1] + YO[i]
        );
    } else {    
      vertex(
        outer[i][0], outer[i][1]
        );
    }
  }
  endShape(CLOSE);

  //fill(#ff00b8);
  //fill(#F92BB6);
  //fill(320.0, 82.7, 97.6);
  fill(334, 26.4, 94.9);
  strokeWeight(20.0);
  strokeJoin(ROUND);
  beginShape();
  for (int i = 0; i < 20; i++) { 
    if (i % 2 == 1) {
      vertex(
        inner[i][0] + XO[i], 
        inner[i][1] + YO[i]
        );
    } else {    
      vertex(
        inner[i][0], inner[i][1]
        );
    }
  }
  endShape(CLOSE);
}
