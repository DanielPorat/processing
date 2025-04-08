/**
 * Mouse 2D.
 *
 * Moving the mouse changes the position and size of each box.
 */
 int TextOfset = 35; //how much I got to minus text to make it centered  
int ScreenChoice = 0;
int choosengun = 0;

int nogun = 0;
int simga = 1; 
int Gameplay = 2;

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
     rect(1200,750, 100, 100);
     fill(255,100,100);
     text("Example",1180, 750);
      fill(100,255,255);
      text("Back",45,23);
     //TODO add text for each button 
       
       
  }
  //TODO add a third screen this could be you for anything you want movement buying anything this is for later though
  if(ScreenChoice == Gameplay){
  }



    text(mouseX, 300, 300);
  text(mouseY, 200, 200);
}
void mousePressed() {
    

  IfmousePressed(150,250,650,750,CharacterSelectionScreen,Pistol,Start_Screen);  //this Reads the mouse X and Y pos and Changes the Screen State, Values You gave is MinX MaxX MinY MaxY and wanted Screen stage
  IfmousePressed(450,550,650,750,CharacterSelectionScreen,Shotgun,Start_Screen);
  IfmousePressed(750,850,650,750,CharacterSelectionScreen,Sniper,Start_Screen);
  IfmousePressed(1050,1150,650,750,CharacterSelectionScreen,Machine_gun,Start_Screen);
  IfmousePressed(1350,1450,650,750,CharacterSelectionScreen,RailGun, Start_Screen);
  IfmousePressed(1650,1750,650,750,CharacterSelectionScreen,Rocket_Luncher, Start_Screen);
  IfmousePressed(10, 110 , 10, 30,Start_Screen,nogun, CharacterSelectionScreen);
  IfmousePressed(1150, 1250, 700, 800,Gameplay, nogun,CharacterSelectionScreen); 

  
//ToDo make a button for each Character
}
//TODO their is a problem here when being in the last stage and picking your Character the ifMousePressed still exist so you can press it even though it shouldn't exist
//a way to do this is add another paramater which limits the stage to only that level,  Iwont tell you extacly how to do  it but it revolves around using an If statment and making the funcion work only if you are at that level
void IfmousePressed(int MinX,int MaxX,int MinY, int MaxY,int screenStage,int gun, int limitscreen) { //It takes 5 values 
  if(mouseX > MinX && mouseX < MaxX && (mouseY > MinY && mouseY < MaxY)) {
    if(limitscreen == ScreenChoice){
    ScreenChoice = screenStage;                                                                                                                                                                
    choosengun = gun;
    }
    
    
  }

}
