int levels;
color bg,fg;

void setup() {
  size(800, 600);
  levels = 1;
}

void draw() { 
  background(50);  
  
  fill(255);
  text("Click the mouse to increase levels, press a key to decrease levles",20,20);

  triangle(150, 10 + 500 / sqrt(2), 650, 10 + 500 / sqrt(2), width/2, 10);
  gasket(levels,150, 10 + 500 / sqrt(2), 650, 10 + 500 / sqrt(2), width/2, 10);

  //koch(levels, 150, 10 + 500 / sqrt(2), 650, 10 + 500 / sqrt(2)); 
 //other fractal you can do! This requires a bit more math, or you can look up the coordinates.
}

void mouseClicked(){ 
  levels++;  
}

void keyPressed(){
  if (levels > 0) {
    levels--;
  }
}
