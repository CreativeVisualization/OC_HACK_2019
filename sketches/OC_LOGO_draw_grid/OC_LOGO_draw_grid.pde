// OC LOGO ANIMATION, Tama Art University

void setup()
{
  size(770, 960);
  background(255);
}

void draw()
{
  
  fill(0);
  beginShape();
  vertex(618.69, 417.09);
  vertex(728.15, 237.57);
  vertex(509.81, 292.39);
  vertex(646.16, 0.0);
  vertex(446.02, 152.01);
  vertex(438.73, 6.78);
  vertex(326.74, 134.18);
  vertex(144.47, 45.9);
  vertex(175.58, 209.37);
  vertex(0.0, 244.14);
  vertex(164.85, 426.16);
  vertex(22.34, 533.3);
  vertex(190.56, 595.32);
  vertex(43.76, 789.19);
  vertex(257.61, 773.35);
  vertex(303.77, 959.72);
  vertex(466.36, 774.31);
  vertex(602.29, 954.9);
  vertex(615.81, 595.92);
  vertex(770.0, 631.68);
  endShape(CLOSE);

  fill(#ff00b8);
  beginShape();
  vertex(593.85, 564.37);
  vertex(583.25, 894.16);
  vertex(467.13, 738.62);
  vertex(315.13, 913.37);
  vertex(274.54, 746.57);
  vertex(87.85, 763.07);
  vertex(223.35, 583.99);
  vertex(67.92, 525.8);
  vertex(197.14, 428.81);
  vertex(41.06, 257.72);
  vertex(202.61, 228.05);
  vertex(173.31, 83.53);
  vertex(333.35, 164.55);
  vertex(421.95, 59.68);
  vertex(428.38, 193.36);
  vertex(592.02, 67.39);
  vertex(471.06, 324.86);
  vertex(684.25, 269.77);
  vertex(592.2, 418.0);
  vertex(720.41, 598.34);
  endShape(CLOSE);
  
  fill(0);
  for (int i = 0; i < width; i += 100) {
    line(i, 0, i, height);
  }
  for (int w = 0; w < height; w += 100) {
    line(0, w, width, w);
  }

}
