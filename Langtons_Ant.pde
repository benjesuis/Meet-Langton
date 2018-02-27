class Ant {

  int w = 10;
  int rows, 
      cols,
      orientation;
  //orientation means which way the ant is facing. 0 is up, 1 is left, 2 is down, 3 is right.
  int[][] board;
  int currentX;
  int currentY;
  int count = 0;
  
  Ant() {
    rows = width / w;
    cols = height / w;
    
    board = new int[rows][cols];
    init();
  }
  
  void init() {
    //currentX = floor(random(rows));
    //currentY = floor(random(cols));
    currentX = floor(rows / 2);
    currentY = floor(cols / 2);
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        board[i][j] = 0;
      }
    }
    orientation = 0;
    count = 0;
  }
 
 
  void step() {
    if (currentX == 1 || currentX == rows-1 || currentY == 1 || currentY == cols-1) {
      init();
    }
      switch (orientation) {
      case 0: 
              //board[currentX][currentY] = 1;
              currentY--;
              if (board[currentX][currentY] == 0) {
                orientation = 3;
                board[currentX][currentY] = 1;
              } else {
                orientation = 1;
                board[currentX][currentY] = 0;
              }
              break;
      case 1: 
              //board[currentX][currentY] = 1;
              currentX--;
              if (board[currentX][currentY] == 0) {
                orientation = 0;
                board[currentX][currentY] = 1;
              } else {
                orientation = 2;
                board[currentX][currentY] = 0;
              }
              break;
      case 2:
              //board[currentX][currentY] = 1;
              currentY++;
              if (board[currentX][currentY] == 0) {
                orientation = 1;
                board[currentX][currentY] = 1;
              } else {
                orientation = 3;
                board[currentX][currentY] = 0;
              }
              break;
      case 3:
              //board[currentX][currentY] = 1;
              currentX++;
              if (board[currentX][currentY] == 0) {
                orientation = 2;
                board[currentX][currentY] = 1;
              } else {
                orientation = 0;
                board[currentX][currentY] = 0;
              }
              break;
      }
    count++;
    System.out.println(count);
  }
  
  void display() {
    for ( int i = 0; i < rows; i++) {
      for ( int j = 0; j < cols; j++) {
        if ((board[i][j] == 1)) fill(0);
        else fill(255); 
        stroke(0);
        rect(i*w, j*w, w, w);
      }
    }
    fill(255, 0, 100);
    rect(currentX*w, currentY*w, w, w);
  }
}
  
