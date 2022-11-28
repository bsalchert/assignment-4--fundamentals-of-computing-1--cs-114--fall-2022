public void drawBoard() {
  stroke(0);

  line(0, (height / 3), width, (height / 3));
  line(0, ((2 * height) / 3), width, ((2 * height) / 3));
  line((width / 3), 0, (width / 3), height);
  line(((2 * width) / 3), 0, ((2 * width) / 3), height);
}

public void drawCircle(int cell) {
  fill(255);

  circle(CELL_CENTER_X[cell % 3], CELL_CENTER_Y[cell / 3], (width / 3));
}
