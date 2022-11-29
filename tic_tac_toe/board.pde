int[][] grid = new int[3][3];

//----------------------------------------------------------------------
//  Does the computer's turn.
//----------------------------------------------------------------------
public void turnComputer() {
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
