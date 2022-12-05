//**********************************************************************
//  constants.pde
//
//  Contains constants for use in other methods for Tic-Tac-Toe.
//**********************************************************************

// Note: Cannot use 'width' or 'height' in constant definitions, as
// these are defined to be 500 after the program assigns constants.
final int WIDTH = 500;
final int[] CELL_CENTER = {(WIDTH / 6), (WIDTH / 2), ((5 * WIDTH) / 6)};
final int CELL_WIDTH = (WIDTH / 3);
final String VALID_KEYS = "012345678";
final int[][][] USER_WINS = {{{2, 2, 2}, {0, 0, 0}, {0, 0, 0}},
                             {{0, 0, 0}, {2, 2, 2}, {0, 0, 0}},
                             {{0, 0, 0}, {0, 0, 0}, {2, 2, 2}},
                             {{2, 0, 0}, {2, 0, 0}, {2, 0, 0}},
                             {{0, 2, 0}, {0, 2, 0}, {0, 2, 0}},
                             {{0, 0, 2}, {0, 0, 2}, {0, 0, 2}},
                             {{2, 0, 0}, {0, 2, 0}, {0, 0, 2}},
                             {{0, 0, 2}, {0, 2, 0}, {2, 0, 0}}};
final int[][][] COMPUTER_WINS = {{{1, 1, 1}, {0, 0, 0}, {0, 0, 0}},
                                 {{0, 0, 0}, {1, 1, 1}, {0, 0, 0}},
                                 {{0, 0, 0}, {0, 0, 0}, {1, 1, 1}},
                                 {{1, 0, 0}, {1, 0, 0}, {1, 0, 0}},
                                 {{0, 1, 0}, {0, 1, 0}, {0, 1, 0}},
                                 {{0, 0, 1}, {0, 0, 1}, {0, 0, 1}},
                                 {{1, 0, 0}, {0, 1, 0}, {0, 0, 1}},
                                 {{0, 0, 1}, {0, 1, 0}, {1, 0, 0}}};
