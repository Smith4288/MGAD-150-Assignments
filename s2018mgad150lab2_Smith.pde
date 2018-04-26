void setup() {
size(250, 250);
background(25);
}


void draw(){
strokeWeight(2.0);
fill(0, 0, 230);
stroke(200, 100, 200);

colorMode(RGB, 160, 100, 100, 2.0);

triangle(10, 10, 60, 10, 45, 60);
fill(0, 0, 0, 120);

colorMode(HSB, 250, 120, 120, 2.0);

fill(80, 80, 200);
stroke(220, 110, 110);
arc(120, 80, 60, 60, 0, PIE);

noStroke();
fill(0xCC7F0000);
ellipse(170, 170, 60, 60);
fill(0xCC00006F);
ellipse(220, 140, 35, 35);
fill(0xCC4F0000);
ellipse(121, 80, 63, 63);

strokeWeight(25);
fill(0, 0, 240);
ellipse(80, 15, 15, 10);
fill(0, 0, 240);
ellipse(216, 45, 19, 18);
}