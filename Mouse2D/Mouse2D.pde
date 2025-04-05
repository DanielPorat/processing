/**
 * Mouse 2D.
 *
 * Moving the mouse changes the position and size of each box.
 */
 int TextOfset = 35; //how much I got to minus text to make it centered  

void setup() {
  fullScreen();//making it full screen
  noStroke();
  rectMode(CENTER);
  textMode(CENTER);
  background(51);
}

void draw() {
  background(51);
  //Creating weapon boxes
  fill(100,255,255); //setting the color of the boxes
  rect(200, 700, 100, 100);  // X Y, size
  rect(500, 700, 100, 100);  // X Y, size
  rect(800, 700, 100, 100);
  rect(1100, 700, 100, 100);
  rect(1400, 700, 100, 100);
  rect(1700, 700, 100, 100);
  //stops weapon boxes

  //Creating Text for weapon boxes
  fill(255,100,100);//Setting the color of the text
  text("Pistol",200-TextOfset,700);
  text("Shotgun",500-TextOfset,700);
  text("Sniper",800-TextOfset,700);
   text("Machine gun",1100-TextOfset,700);
  text("RailGun",1400-TextOfset,700);
  text("Rocket Luncher",1700-TextOfset,700);
  //text();
  //text();




    text(mouseX, 300, 300);
  text(mouseY, 200, 200);
}
void mousePressed() {
}
