int[] grid = new int[9];

public void turnComputer() {
  int cell = int(random(9));

  while (grid[cell] != 0) {
    cell = int(random(9));
  }

  drawX(cell);
  grid[cell] = 1;
}

public void turnUser(int cell) {
  if (grid[cell] == 0 ) {
    drawCircle(cell);
    grid[cell] = 1;
    validMove = true;
  }
  else {
    println("Invalid placement. Please choose another cell.");
  }
}
