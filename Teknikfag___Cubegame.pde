Players player1 = new Players(50, 50, 1);
Players player2 = new Players(200, 50, 2);
boolean keys[] = new boolean [8];


void setup() {
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  background(71);
  player1.update();
  player2.update();
}

void keyPressed() {
  if (key == 'w')        keys[0] = true;
  if (key == 's')        keys[1] = true;
  if (key == 'a')        keys[2] = true;
  if (key == 'd')        keys[3] = true;
  if (keyCode == UP)     keys[4] = true;
  if (keyCode == DOWN)   keys[5] = true;
  if (keyCode == LEFT)   keys[6] = true;
  if (keyCode == RIGHT)  keys[7] = true;
}

void keyReleased() {
  if (key == 'w')        keys[0] = false;
  if (key == 's')        keys[1] = false;
  if (key == 'a')        keys[2] = false;
  if (key == 'd')        keys[3] = false;
  if (keyCode == UP)     keys[4] = false;
  if (keyCode == DOWN)   keys[5] = false;
  if (keyCode == LEFT)   keys[6] = false;
  if (keyCode == RIGHT)  keys[7] = false;
}
