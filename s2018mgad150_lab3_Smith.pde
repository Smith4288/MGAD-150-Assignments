boolean flipFlopper;

int red;
int green;
int blue;

float deltaMouseX;
float deltaMouseY;

float w = 15;
float h = 15;


void setup() {
  size(500, 500);
  frameRate(25);
}

void draw() {
  background(40);
  noStroke();
  rectMode(CORNERS);
  ellipseMode(RADIUS);
  millis();
  
  red = (red + 2) % 256;
  green = (green + 6) % 256;
  blue = (blue + 1) % 256;
  fill(red, green, blue);
  
  w = (w + 1) % (height / 4.5);
  h = (h + 1) % (height / 4.5);
  
  ellipse(mouseX, mouseY, w, h);
  println("(" + mouseX + ", " + mouseY + ")");
  
  deltaMouseX = mouseX - pmouseX;
  deltaMouseY = mouseY - pmouseY;
  
  println("delta: (" + deltaMouseX + ", " + deltaMouseY + ")");
  
  flipFlopper = !flipFlopper;
  println("flipFlopper = " + flipFlopper);
  
  fill(55);
  rect(width * 0.20, height * 0.20, width * 0.5, height * 0.8, 20); 
  
  fill(map(mouseX, 0, width, 120, 250), 120, 
  map(mouseY, 0, height, 120, 250));
  
  ellipse(map(mouseX, 0, width, 
  width * 0.25 + min(width, height) * 0.080,
  width * 0.15 - min(width, height) * 0.080),
  map(mouseY, 0, height,
  height * 0.25 + min(width, height) * 0.080,
  height * 0.925 - min(width, height) * 0.080),
  min(width, height) * 0.080,
  min(width, height) * 0.080);
  
  beginShape();
  fill(74);
  vertex(width, height);
  fill(10);
  vertex(0, height);
  fill(10);
  vertex(0, height - 12);
  fill(74);
  vertex(width, height - 12);
  endShape(CLOSE);
  
  println("max: " + max(40, 12)); 
  println("min: " + min(-37, 37));
  
ellipse(mouseX, mouseY, 20, 20);
println("(" + mouseX + ", " + mouseY + ")");

}