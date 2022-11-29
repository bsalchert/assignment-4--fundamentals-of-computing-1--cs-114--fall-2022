//**********************************************************************
//  board.pde
//
//  Contains methods and variables for processing the logic of the
//  Tic-Tac-Toe game.
//**********************************************************************

int[][] grid = new int[3][3];
boolean isUserTurn = false;
boolean validMove = false;
String validKeys = "012345678";

//----------------------------------------------------------------------
//  Does the computer's turn.
//----------------------------------------------------------------------
public void turnComputer() {
  if (!isUserTurn) {
    int cell = int(random(9));

    int cellX = (cell % 3);
    int cellY = (cell / 3);

    while (grid[cellX][cellY] != 0) {
      cell = int(random(9));
      cellX = (cell % 3);
      cellY = (cell / 3);
    }

    drawX(cell);
    grid[cellX][cellY] = 1;

    isUserTurn = true;
  }
}

//----------------------------------------------------------------------
//  Attempts to do the player's turn.
//----------------------------------------------------------------------
public void turnUser(int cell) {
  int cellX = (cell % 3);
  int cellY = (cell / 3);

  if (grid[cellX][cellY] == 0 ) {
    drawCircle(cell);
    grid[cellX][cellY] = 2;
    validMove = true;
  }
  else {
    println("Invalid placement. Please choose another cell.");
  }
}

//----------------------------------------------------------------------
//  Checks user input and calls turnUser if the input is valid. If
//  turnUser executes a valid move, the user's turn is ended.
//----------------------------------------------------------------------
public void keyPressed() {
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
