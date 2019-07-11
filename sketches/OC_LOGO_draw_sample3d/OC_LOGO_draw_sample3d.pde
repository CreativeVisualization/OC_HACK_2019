// OC LOGO ANIMATION, Tama Art University

float[][] outer = {
  {618.69, 417.09}, {728.15, 237.57}, {509.81, 292.39}, {646.16, 0.0}, {446.02, 152.01}, {438.73, 6.78}, {326.74, 134.18}, {144.47, 45.9}, {175.58, 209.37}, {0.0, 244.14}, {164.85, 426.16}, {22.34, 533.3}, {190.56, 595.32}, {43.76, 789.19}, {257.61, 773.35}, {303.77, 959.72}, {466.36, 774.31}, {602.29, 954.9}, {615.81, 595.92}, {770.0, 631.68}
};
float[][] inner = {
  {592.2, 418.0}, {684.25, 269.7}, {471.06, 324.86}, {592.02, 67.39}, {428.38, 193.}, {421.95, 59.68}, {333.35, 164.55}, {173.31, 83.53}, {202.61, 228.05}, {41.06, 257.7}, {197.14, 428.81}, {67.92, 525.8}, {223.35, 583.99}, {87.85, 763.07}, {274.54, 746.57}, {315.13, 913.37}, {467.13, 738.6}, {583.25, 894.16}, {593.85, 564.37}, {720.41, 598.34}
};
void setup() {
  size(1000, 1200, P3D);
  background(255);
  noStroke();
}
void draw() {
  translate(500, 600);
  fill(0);
  beginShape();
  for (int i = 0; i < 20; i++) { 
    vertex(outer[i][0]+random(-435, -335), outer[i][1]+random(-530, -430));
  }
  endShape(CLOSE);
  rotateX(random(-0.01, 0.01));
  rotateY(random(-0.01, 0.01));
  rotateZ(random(-0.01, 0.01));
  fill(#ff00b8);
  beginShape();
  for (int i = 0; i < 20; i++) { 
    vertex(inner[i][0]+random(-435, -335), inner[i][1]+random(-530, -430));
  }
  endShape(CLOSE);
  for (int j = 0; j < 3; j++) {
    rotateX(random(-0.01, 0.01));
    rotateY(random(-0.01, 0.01));
    rotateZ(random(-0.01, 0.01));
    fill(random(0, 256), random(128, 256), random(0, 128));
    beginShape();
    for (int i = 0; i < 20; i+=7) {
      int n = int(random(i, i+7))%20;
      vertex(inner[n][0]+random(-435, -335), inner[n][1]+random(-530, -430));
    }
    endShape(CLOSE);
  }
  noLoop();
//  save("OChack"+str(int(random(65535)))+".jpg");
}
