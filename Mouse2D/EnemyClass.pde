class EnemyClass{ 
  float[] EnemysX;
  float[] EnemysY;
  float EnemySpeed;
  
  CharacterClass MainCharacter;
   void setup() {
   MainCharacter = new CharacterClass(choosenSpeed,choosenCharacterName);
  }
  EnemyClass(float enemySpeed) {
    this.EnemySpeed = enemySpeed;

  } 
  void draw() {
    float CharacterX = MainCharacter.X;
     float CharacterY = MainCharacter.Y;
    
  }
  
  void SpawnEnemies(int frequency,int EnemyCap) {
      MainCharacter = new CharacterClass(choosenSpeed,choosenCharacterName);
      EnemysX = new float[EnemyCap-1];
       EnemysY = new float[EnemyCap-1];
     float CharacterX = MainCharacter.X;
     float CharacterY = MainCharacter.Y;
        text(MainCharacter.X,1000,1000);
        
    for(int P = 0; P < EnemyCap-1; P++ ) {
      float RandomX = random(CharacterX+100,1700);
      float RandomY = random(CharacterY+100,1000);
      EnemysX[P] = RandomX;
      EnemysY[P] = RandomY;
      rect(RandomX,RandomY,100,100);

      delay(10);
      }
  }
  void ReDraw() {
    if (EnemysX == null || EnemysY == null) return;
    for(int P = 0; P < EnemysX.length; P++ ) {
      rect(EnemysX[P],EnemysY[P],100,100);
  }
  }
  
  void Movement(float CharacterX, float CharacterY) {
    
    
     for(int P = 0; P < EnemysX.length; P++ ) {
       float rise = EnemysY[P] - CharacterY;
       float run = EnemysX[P] - CharacterX;
       float RatioY = run/rise;
       float TotalDistance = (rise * rise) + run * run;
       float RealTotalDistance = sqrt(TotalDistance);
       float ScaledDown = RealTotalDistance/EnemySpeed;
       float RiseScaled = rise / ScaledDown;
       float RunScaled = run / ScaledDown;
       
       
       if(EnemysX[P]-75 <= CharacterX && (EnemysX[P]+75 >= CharacterX) && (EnemysY[P]-190 <= CharacterY && (EnemysY[P]+16 >= CharacterY))) {
           ScreenChoice = Start_Screen;
       }
       else{
       EnemysX[P] -= RunScaled - random(-0.1,-0.3);//Random is for more intresting movement
       EnemysY[P] -= RiseScaled - random(-0.1,-0.3);
       //      if(0 >= (EnemysX[P] - CharacterX)) {
       //  EnemysX[P] += RiseScaled;
       //}
       //else {
       // EnemysX[P] -= RiseScaled;
       //}
       //  if(0 >= (EnemysY[P] - CharacterY)) {
       //  EnemysY[P] += RunScaled;
       //}
       //else {
       // EnemysY[P] -= RunScaled;
       //}
 

       
       
     //  if(EnemysX[P]-10 >= CharacterX && (EnemysX[P]+10 <= CharacterX) || EnemysY[P]-10 >= CharacterY && (EnemysY[P]+10 <= CharacterY)) {
     //    ScreenChoice = Start_Screen;
     //  }
   
      rect(EnemysX[P],EnemysY[P],100,100);
  }
    
    
  
  }
}
}
