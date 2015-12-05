/* please implement your assign1 code in this file. */
  PImage fighter,enemy,treasure,hp,bg1,bg2;
  int bg1x,bg1y,bg2x,bg2y;
  int bg1x1,bg1y1,bg2x1,bg2y1;
  int enemyx,enemyy;
  int fighterx,fightery;
  int treasurex,treasurey;
  int hpx,hpy;
  int hplength;
void setup () {
  size(640,480) ;  // must use this size.
  fighter = loadImage("img/fighter.png");
  enemy = loadImage("img/enemy.png");
  treasure = loadImage("img/treasure.png");
  hp = loadImage("img/hp.png");
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  bg1x = 0;bg1y = 0;bg2x = -640;bg2y = 0;
  bg1x1 = 640;bg1y1 = 0;bg2x1 = 0;bg2y1 = 0;
  enemyx =0;
  enemyy = int(random(40,480));
  fighterx = 580;
  fightery = int(random(40,420));
  treasurex = int(random(20,620));
  treasurey = int(random(20,420));
  hpx = 10;
  hpy = 10;
  hplength = int(random(20,210));
  // your code
}

void draw() {
  background(0);
  image (bg1,bg1x,bg1y);
  image (bg2,bg2x,bg2y);
  bg1x1 ++;//speed
  bg1x1 %= 1280;//loop
  bg1x = bg1x1 - 640;
  bg2x1 ++;
  bg2x1 %= 1280;
  bg2x = bg2x1 - 640;
 image (enemy,enemyx,enemyy);
  enemyx+=5;
  enemyx %=640;
  image (fighter,fighterx,fightery);
  image (treasure,treasurex,treasurey);

  fill(255,0,0);
  noStroke();
  rect(11,13,hplength,20,10);
  image (hp,hpx,hpy);
  // your code
}
