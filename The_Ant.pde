Ant langton;

void settings() {
  size(1000, 1000);
  //frameRate(120);
  langton = new Ant();
}


void draw() {
  background(255);

  langton.step();
  langton.display();
}

// reset board when mouse is pressed
void mousePressed() {
  langton.init();
}