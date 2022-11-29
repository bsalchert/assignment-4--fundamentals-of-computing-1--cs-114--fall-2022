//**********************************************************************
//  tic_tac_toe.pde
//
//  Main driver for the Tic-Tac-Toe game. Contains the setup() and
//  draw() methods and all necessary code for interacting with the user.
//**********************************************************************

boolean isUserTurn = false;
boolean validMove = false;
String validKeys = "012345678";

void setup() {
  size(500, 500);
  drawBoard();
}

void draw() {
  if (isUserTurn == false) {
    turnComputer();
    isUserTurn = true;
  }
}

void keyPressed() {
  String input = "" + key;
  if (validKeys.indexOf(input) != -1) {
    int cell = Integer.parseInt(input);
    turnUser(cell);
  }
  else {
    println("Incorrect Key Pressed. Please try again.");
  }

  if (validMove) {
    validMove = false;
    isUserTurn = false;
  }
}
