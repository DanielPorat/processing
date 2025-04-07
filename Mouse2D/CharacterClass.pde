
class CharacterClass{
  float X;
  float Y;
  float choosenSpeed = 20;
  String Name;
  CharacterClass(float speed,String name) {
    this.choosenSpeed = speed;
    this.Name = name;
    
  }
  void setup() {
   MainCharacter = new CharacterClass(choosenSpeed,choosenCharacterName);
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
      
  }
  else if(MainCharacter.Name == WarriorName) {
      displayWarrior();
      choosenSpeed = WarriorSpeed;
      choosenCharacterName = WarriorName;
      
  }
  else if(MainCharacter.Name == KingName) {
      displayKing();
      choosenSpeed = KingSpeed;
      choosenCharacterName = KingName;
  }
  else if(MainCharacter.Name == DarkOverLordName) {
      displayDarkOverLord();
      choosenSpeed = DarkOverLordSpeed;
      choosenCharacterName = DarkOverLordName;
  }
  else if(MainCharacter.Name == ElfName) {
      displayElf();
      choosenSpeed = ElfSpeed;
      choosenCharacterName = ElfName;
  }
  else if(MainCharacter.Name == AssassinName) {
      displayAssassin();
      choosenSpeed = AssassinSpeed;
      choosenCharacterName = AssassinName;
  }
}
  
  
  
  
  
  void displayWarrior() {
    
    stroke(0);
    fill(127);
    ellipse(X,Y,64,64);  
    rect(X,Y+75,75,75);
  }
  void displayKing() {
    stroke(0);
    fill(127);
    ellipse(X,Y,64,64);
    ellipse(X+60,Y+75,11,64); 
    ellipse(X+60,Y+75,11,64); 
    rect(X,Y+75,100,100);
  }
  void displayWizard() {
     stroke(0);
    fill(127);
    ellipse(X,Y,64,64);
   CreateHands();
    rect(X,Y+75,75,75);
  }
  void displayDarkOverLord() {
     stroke(0);
    fill(127);
    ellipse(X,Y,64,64);
  CreateHands();
    rect(X,Y+75,100,100);
  }
  void displayElf() {
     stroke(0);
    fill(127);
    ellipse(X,Y,64,64);
     CreateHands(); 
    rect(X,Y+75,86,136);
  }
  void displayAssassin() {
     stroke(0);
    fill(127);
    ellipse(X,Y,64,64);
     CreateHands();
    rect(X,Y+75,50,136);
  }
  void CreateHands() {
    ellipse(X+60,Y+75,11,64); 
    ellipse(X+60,Y+75,11,64); 
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
