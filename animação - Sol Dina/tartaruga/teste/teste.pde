PImage bg;
int y;

void setup() {
  size(1920,1080);
  
  bg = loadImage("BugRix.jpg"); 
}

void draw() {
 
  background(bg);
  lights();
}
