
class CharacterClass{
  float X;
  float Y;
  float choosenSpeed = 20;
  int ChoosenHealth = 100;
  String Name;
 
  CharacterClass(float speed,String name,int health) {
    this.choosenSpeed = speed;
    this.Name = name;
    this.ChoosenHealth = health;
    
  }
  void setup() {
   MainCharacter = new CharacterClass(choosenSpeed,choosenCharacterName,ChoosenHealth);
  }
  //public float getX() {
  //  return(X);
  //}
  //public float getY() {
  //  return(Y);
  //}
  void display() {
    if(MainCharacter.Name == WizardName) {
      displayWizard();
      choosenSpeed = WizardSpeed;
      choosenCharacterName = WizardName;
      ChoosenHealth = WizardHealth;
      
  }
  else if(MainCharacter.Name == WarriorName) {
      displayWarrior();
      choosenSpeed = WarriorSpeed;
      choosenCharacterName = WarriorName;
       ChoosenHealth = WarriorHealth;
      
  }
  else if(MainCharacter.Name == KingName) {
      displayKing();
      choosenSpeed = KingSpeed;
      choosenCharacterName = KingName;
       ChoosenHealth = KingHealth;
  }
  else if(MainCharacter.Name == DarkOverLordName) {
      displayDarkOverLord();
      choosenSpeed = DarkOverLordSpeed;
      choosenCharacterName = DarkOverLordName;
       ChoosenHealth = DarkOverLordHealth;
  }
  else if(MainCharacter.Name == ElfName) {
      displayElf();
      choosenSpeed = ElfSpeed;
      choosenCharacterName = ElfName;
       ChoosenHealth = ElfHealth;
  }
  else if(MainCharacter.Name == AssassinName) {
      displayAssassin();
      choosenSpeed = AssassinSpeed;
      choosenCharacterName = AssassinName;
       ChoosenHealth = AssassinHealth;
  }
}
  
  
  
  
  
  void displayWarrior() {
    
    stroke(0);
    fill(127);
    ellipse(X,Y,64,64);  
 CreateBodyParts(25,120,50,50);
   rect(X,Y+75,86,136,100);
  }
  void displayKing() {
    stroke(0);
    fill(127);
    ellipse(X,Y,64,64);
 CreateBodyParts(25,120,50,50);
   rect(X,Y+75,86,136,100);
  }
  void displayWizard() {
     stroke(0);
    fill(127);
    ellipse(X,Y,64,64);
 CreateBodyParts(25,120,50,50);
   rect(X,Y+75,86,136,100);
  }
  void displayDarkOverLord() {
     stroke(0);
    fill(127);
    ellipse(X,Y,64,64);
 CreateBodyParts(25,120,50,50);
   rect(X,Y+75,86,136,100);
  }
  void displayElf() {
     stroke(0);
    fill(127);
    ellipse(X,Y,64,64);
 CreateBodyParts(25,120,50,50);
   rect(X,Y+75,86,136,100);
  }
  void displayAssassin() {
     stroke(0);
    fill(127);
    ellipse(X,Y,64,64);
   CreateBodyParts(25,120,50,50);
   rect(X,Y+75,86,136,100);
  }
  void CreateBodyParts(int LegsXOffset, int LegsYOffset,int HandsXOffset, int HandsYOffset) {
    CreateLegs(LegsXOffset,LegsYOffset);
    CreateHands(HandsXOffset,HandsYOffset);
  }
  void CreateHands(int XOffset, int YOffset) {
    ellipse(X-XOffset,Y+YOffset,25,64); 
    ellipse(X+XOffset,Y+YOffset,25,64); 
  }
    void CreateLegs(int XOffset, int YOffset) {
    ellipse(X-XOffset,Y+YOffset,25,64); 
    ellipse(X+XOffset,Y+YOffset,25,64); 
  }
  void keyPressed() {
    if(keyCode == LEFT){
       if(X >= 20) {
         X -= choosenSpeed;
        
       }
    }
    else if(keyCode == DOWN) {
      
       if(Y <= 1000) {
          Y += choosenSpeed; 
       }
} 
    else if(keyCode == RIGHT) {
       if(X <= 1900) {
         X += choosenSpeed;
       }
    }
    else if (keyCode == UP) {
      if(Y >= 20) {
          Y -= choosenSpeed; 
    }
    
  }
}
}
