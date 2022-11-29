//**********************************************************************
//  shapes.pde
//
//  Contains methods for drawing the elements of the Tic-Tac-Toe game.
//**********************************************************************

//----------------------------------------------------------------------
//  Draws the Tic-Tac-Toe board.
//----------------------------------------------------------------------
public void drawBoard() {
  stroke(0);

  line(0, (height / 3), width, (height / 3));
  line(0, ((2 * height) / 3), width, ((2 * height) / 3));
  line((width / 3), 0, (width / 3), height);
  line(((2 * width) / 3), 0, ((2 * width) / 3), height);
}

//----------------------------------------------------------------------
//  Draws a circle with white fill in the specified cell location.
//----------------------------------------------------------------------
public void drawCircle(int cell) {
  fill(255);

  circle(CELL_CENTER[cell % 3], CELL_CENTER[cell / 3], CELL_WIDTH);
}

//----------------------------------------------------------------------
//  Draws an X at the specified cell location.
//----------------------------------------------------------------------
public void drawX(int cell) {
  int startX = (CELL_WIDTH * (cell % 3));
  int startY = (CELL_WIDTH * (cell / 3));
  int endX = (startX + CELL_WIDTH);
  int endY = (startY + CELL_WIDTH);

  line(startX, startY, endX, endY);

  startX += CELL_WIDTH;
  endX -= CELL_WIDTH;

  line(startX, startY, endX, endY);
}
