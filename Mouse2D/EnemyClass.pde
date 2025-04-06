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
  void SpawnEnemies(int frequency,int EnemyCap) {
       MainCharacter = new CharacterClass(choosenSpeed,choosenCharacterName);
        text(MainCharacter.X,1000,1000);
        
    for(int P = 0; P <= EnemyCap; P++ ) {
      float RandomX = random(MainCharacter.X,1700);
      float RandomY = random(MainCharacter.Y,1000);
      EnemysX[P] = RandomX;
      EnemysY[P] = RandomY;
      rect(RandomX,RandomY,100,100);

      delay(frequency);
      }
  }
  void ReDraw() {
    for(int P = 0; P <= 10; P++ ) {
    rect(EnemysX[P],EnemysY[P],100,100);
  }
  }
  
  void Movement() {
    
  
  }
}
