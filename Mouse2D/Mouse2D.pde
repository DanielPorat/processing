/**
 * Mouse 2D.
 *
 * Moving the mouse changes the position and size of each box.
 */
 int TextOfset = 35; //how much I got to minus text to make it centered  
int ScreenChoice = 0;
int choosengun = 0;
int Pistol = 1;
int Shotgun = 2;
int Sniper = 3;
int Machine_gun = 4;
int RailGun = 5;
int Rocket_Luncher = 6;
int nogun = 0;
int simga = 1; 


final int Start_Screen = 0;
final int CharacterSelectionScreen = 1;
int SelectedScreen;
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

  if(ScreenChoice == Start_Screen) {
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
  }
  if(ScreenChoice == CharacterSelectionScreen) {
    
     background(51);
     fill(255,100,100);
     rect(60, 20, 100, 20);
      fill(100,255,255);
      text("Back",45,23);
     
       
       
  }




    text(mouseX, 300, 300);
  text(mouseY, 200, 200);
}
void mousePressed() {

  IfmousePressed(150,250,650,750,CharacterSelectionScreen,Pistol); //this Reads the mouse X and Y pos and Changes the Screen State, Values You gave is MinX MaxX MinY MaxY and wanted Screen stage
  IfmousePressed(450,550,650,750,CharacterSelectionScreen,Shotgun);
  IfmousePressed(750,850,650,750,CharacterSelectionScreen,Sniper);
  IfmousePressed(1050,1150,650,750,CharacterSelectionScreen,Machine_gun);
  IfmousePressed(1350,1450,650,750,CharacterSelectionScreen,RailGun);
  IfmousePressed(1650,1750,650,750,CharacterSelectionScreen,Rocket_Luncher);
  IfmousePressed(10, 110 , 10, 30,Start_Screen,nogun);
  

  

}
void IfmousePressed(int MinX,int MaxX,int MinY, int MaxY,int screenStage,int gun) { //It takes 5 values 
  if(mouseX > MinX && mouseX < MaxX && (mouseY > MinY && mouseY < MaxY)) {
    ScreenChoice = screenStage; 
    choosengun = gun;
    
  }
  

}
