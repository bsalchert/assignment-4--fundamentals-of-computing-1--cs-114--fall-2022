//**********************************************************************
//  tic_tac_toe.pde
//
//  Main driver for the Tic-Tac-Toe game. Contains the setup() and
//  draw() methods and all necessary code for interacting with the user.
//**********************************************************************

void setup() {
  size(500, 500);
  drawBoard();
}

void draw() {
  turnComputer();
}
