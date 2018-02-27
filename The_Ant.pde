Ant langton;
int stepSize;

void settings() {
  size(1000, 1000);
  //frameRate(120);
  langton = new Ant();
  stepSize = 5;
}


void draw() {
  background(255);
  for (int n = 0; n < stepSize; n++) {
    langton.step();
  }
  langton.display();
  
}

// reset board when mouse is pressed
void mousePressed() {
  langton.init();
}
