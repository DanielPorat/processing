/**
 * Mouse 2D.
 *
 * Moving the mouse changes the position and size of each box.
 */
 //Characters 
 


 
 int TextOfset = 35; //how much I got to minus text to make it centered  
int ScreenChoice = 0;


int nogun = 0;
int simga = 1; 
 int Timer = 0;
CharacterClass MainCharacter;
Weapons NewWeapons;



int SelectedScreen;
void setup() {
 
 
  fullScreen();//making it full screen
  noStroke();
  rectMode(CENTER);
  textMode(CENTER);
  background(51);
  MainCharacter = new CharacterClass(choosenSpeed,choosenCharacterName); 
  
}

void draw() {
  background(51);
 
 
  
  Start_screen();
  CharacterSelectionScreen();
  GameScreen();
   




    text(mouseX, 300, 300);
  text(mouseY, 200, 200);
}
void GameScreen() {
  
   if(ScreenChoice == GameScreen) {
  
     NewWeapons.PickWeapon(choosengunId);
     
     
 
     MainCharacter.display();
     MainCharacter.keyPressed();
   
    
     text(NewWeapons.Name,100,100);
     text(MainCharacter.X,500,500);
     text(MainCharacter.Y,700,700);
   }
   else{
      MainCharacter = new CharacterClass(choosenSpeed,choosenCharacterName); 
     NewWeapons = new Weapons(choosengunDamage,choosengunName, choosengunRange, choosengunId);
   }
}
void CharacterSelectionScreen() {
    if(ScreenChoice == CharacterSelectionScreen) {
    
     background(51);
       rect(200, 700, 100, 100);  // X Y, size
    rect(500, 700, 100, 100);  // X Y, size
    rect(800, 700, 100, 100);
    rect(1100, 700, 100, 100);
    rect(1400, 700, 100, 100);
    rect(1700, 700, 100, 100);
    
    fill(255,100,100);//Setting the color of the text
    
    text("Warrior",200-TextOfset,700);
    text("Wizard",500-TextOfset,700);
    text("King",800-TextOfset,700);
    text("DarkOverLord",1100-TextOfset,700);
    text("Elf",1400-TextOfset,700);
    text("Assassin",1700-TextOfset,700);
     fill(255,100,100);
     rect(60, 20, 100, 20);
      fill(100,255,255);
      text("Back",45,23);
     
       
       
  }
} 



void Start_screen() {
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
    text("Rocket launcher",1700-TextOfset,700);
   
  //text();
  //text();
  }
}
void mousePressed() {

   IfmousePressed(150,250,650,750,GameScreen,PistolId,CharacterSelectionScreen,choosenCharacterName); //this Reads the mouse X and Y pos and Changes the Screen State, Values You gave is MinX MaxX MinY MaxY and wanted Screen stage
  IfmousePressed(450,550,650,750,GameScreen,ShotgunId,CharacterSelectionScreen,choosenCharacterName);
  IfmousePressed(750,850,650,750,GameScreen,SniperId,CharacterSelectionScreen,choosenCharacterName);
  IfmousePressed(1050,1150,650,750,GameScreen,Machine_gunId,CharacterSelectionScreen,choosenCharacterName);
  IfmousePressed(1350,1450,650,750,GameScreen,RailGunId,CharacterSelectionScreen,choosenCharacterName);
  IfmousePressed(1650,1750,650,750,GameScreen,Rocket_LauncherId,CharacterSelectionScreen,choosenCharacterName);
  
  IfmousePressed(150,250,650,750,CharacterSelectionScreen,choosengunId,Start_Screen,WarriorName); //this Reads the mouse X and Y pos and Changes the Screen State, Values You gave is MinX MaxX MinY MaxY and wanted Screen stage
  IfmousePressed(450,550,650,750,CharacterSelectionScreen,choosengunId,Start_Screen,WizardName);
  IfmousePressed(750,850,650,750,CharacterSelectionScreen,choosengunId,Start_Screen,KingName);
  IfmousePressed(1050,1150,650,750,CharacterSelectionScreen,choosengunId,Start_Screen,DarkOverLordName);
  IfmousePressed(1350,1450,650,750,CharacterSelectionScreen,choosengunId,Start_Screen,ElfName);
  IfmousePressed(1650,1750,650,750,CharacterSelectionScreen,choosengunId,Start_Screen,AssassinName);
  
  IfmousePressed(10, 110 , 10, 30,Start_Screen,nogun,CharacterSelectionScreen,choosenCharacterName);
  



  

}
void IfmousePressed(int MinX,int MaxX,int MinY, int MaxY,int screenStage,int gunId,int LimitStage,String CharacterName) { //It takes 5 values  //Limit stage is what stage it works on

  if(mouseX > MinX && mouseX < MaxX && (mouseY > MinY && mouseY < MaxY) && (LimitStage == ScreenChoice)) {
    ScreenChoice = screenStage; 
    choosengunId = gunId;
    choosenCharacterName = CharacterName; 
    
    }
}



  

  
