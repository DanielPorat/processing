class EnemyClass{ 
  float[] EnemysX;
  float[] EnemysY;
  int[] Enemies;
  float EnemySpeed;
  float EnemySpeedMutplier;
  int EnemyId;
  float[] EnemySpeeds; 
  int[] EnemyDamages;
  int[] EnemyHealth;
  CharacterClass MainCharacter;
   void setup() {
   MainCharacter = new CharacterClass(choosenSpeed,choosenCharacterName,ChoosenHealth);
  }
  EnemyClass(float enemySpeedMutplier,int enemyId) {
    this.EnemySpeedMutplier = enemySpeedMutplier;
    this.EnemyId = enemyId;

  } 

  void EnemyStats(int EnemyId,int PIndex) {
    EnemySpeeds = new float[ Enemies.length];
    EnemyDamages = new int[ Enemies.length];
    EnemyHealth = new int[ Enemies.length];
    for(int P = 0; P < Enemies.length; P++ ) {
    if(Enemies[P] == defualtEnemy){
      EnemySpeeds[P] = defualEnemySpeed;
      EnemyDamages[P] = defualtEnemyDamage;
      EnemyHealth[P] =   defualtEnemyHealth;
         text("2",100,100);
    }
    if(Enemies[P] == MutantBat){
      EnemySpeeds[P] = MutantBatEnemySpeed;
      EnemyDamages[P] = MutantBatEnemyDamage;
      EnemyHealth[P] =  MutantBatEnemyHealth;
     
    }
    }
  
  }
  void SpawnEnemies(int frequency,int EnemyCap) {
     if (!enemiesSpawned) {
      MainCharacter = new CharacterClass(choosenSpeed,choosenCharacterName,ChoosenHealth);
      Enemies = new int[EnemyCap];
      EnemysX = new float[EnemyCap];
       EnemysY = new float[EnemyCap];
     float CharacterX = MainCharacter.X;
     float CharacterY = MainCharacter.Y;
        text(MainCharacter.X,1000,1000);
        
    for(int P = 0; P < EnemyCap-1; P++ ) {
      float RandomX = random(CharacterX+100,1700);
      float RandomY = random(CharacterY+100,1000);
      EnemysX[P] = RandomX;
      EnemysY[P] = RandomY;
      Enemies[P] = int(random(defualtEnemy,MutantBat+1));
      EnemyStats(Enemies[P],P);
      rect(RandomX,RandomY,100,100);

      delay(10);
      }
     }
        enemiesSpawned = true; 
  }
  void Spawn() {
    
  }
  void ReDraw() {
    if (EnemysX == null || EnemysY == null ) return;
    for(int P = 0; P < Enemies.length; P++ ) {
      if(Enemies[P] != NoEnemy) {
        
        if(Enemies[P] == defualtEnemy) {
       fill(255,0,0);
        rect(EnemysX[P],EnemysY[P]-40,EnemyHealth[P],50);
        fill(100,20,20);
        rect(EnemysX[P],EnemysY[P],100,100);
        }
        else if((Enemies[P] == MutantBat)) {
          fill(255,0,0);
            rect(EnemysX[P],EnemysY[P]-20,EnemyHealth[P]*2,50);
            fill(100,20,20);
            rect(EnemysX[P],EnemysY[P],200,50);
        }
      }
  }
  }
  
  void Movement(float CharacterX, float CharacterY) {
    
    
     for(int P = 0; P < EnemysX.length; P++ ) {
       float rise = EnemysY[P] - CharacterY;
       float run = EnemysX[P] - CharacterX;
       float RatioY = run/rise;
       float TotalDistance = (rise * rise) + run * run;
       float RealTotalDistance = sqrt(TotalDistance);
       float ScaledDown = RealTotalDistance/EnemySpeeds[P];
       float RiseScaled = rise / ScaledDown;
       float RunScaled = run / ScaledDown;
       
     
       if(EnemysX[P]-75 <= CharacterX && (EnemysX[P]+75 >= CharacterX) && (EnemysY[P]-190 <= CharacterY && (EnemysY[P]+16 >= CharacterY))) {
           EnemysX[P] = -2000;
           EnemysY[P] = -2000;
           Enemies[P] = NoEnemy;
           Enemies[P] = NoEnemy;
           ChoosenHealth -= EnemyDamages[P];
           if(ChoosenHealth <= 0) {
             ScreenChoice = Start_Screen;
             ChoosenHealth = 100;
           } 
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
   
      ReDraw();
  }
    
    
  
  }
}
}
