


class CharacterClass{
  float X;
  float Y;
  float Speed = 20;
  void setup() {
   MainCharacter = new CharacterClass();
  }
  void displayWarrior() {
    stroke(0);
    fill(127);
    ellipse(X,Y,64,64);  
    rect(X,Y+75,100,100);
  }
  void keyPressed() {
    if(keyCode == LEFT){
       if(X >= 20) {
         X -= Speed;
       }
    }
    else if(keyCode == DOWN) {
      
       if(Y <= 1099) {
          Y += Speed; 
       }
} 
    else if(keyCode == RIGHT) {
       if(X <= 1900) {
         X += Speed;
       }
    }
    else if (keyCode == UP) {
      if(Y >= 20) {
          Y -= Speed; 
    }
    
  }
}
}
