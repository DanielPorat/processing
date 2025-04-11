class Weapons {
    float[] StartBulletsX;
    float[] StartBulletsY;
    float[] BulletsX;
    float[] BulletsY;
    int Damage;
    String Name;
    int Range;
    int ID;
   int BulletAmount;
   int BulletSpeed;
    int BulletAmounts;
     int BulletLimit;
    boolean BulletsCreated = false;
     float MovedStartBulletsX = 0;
     CharacterClass MainCharacter;
    void setup() {
       PickWeapon(choosengunId);
     
       MainCharacter = new CharacterClass(choosenSpeed,choosenCharacterName,ChoosenHealth);
     
       
  }
    
    // Constructor
    Weapons(int damage, String name, int range, int id,int bulletlimit, int bulletSpeed) {
        this.Damage = damage;
        this.Name = name;
        this.Range = range;
        this.ID = id;
        this.BulletLimit = bulletlimit;
        this.BulletSpeed = bulletSpeed;
    }
 
    void Movement(){
      
        for(int P = 0; P <= choosengunBulletLimit; P++) { 
           //if(BulletsX[P] != null ) {
              BulletsX[P] += choosengunSpeed;
             DrawBullets( BulletsX[P],BulletsY[P]);
              if(BulletsX[P] - choosengunRange  >= StartBulletsX[P]) {
                BulletsX[P] = -10000;
                
                BulletAmounts--;
              
              }
              //}
        }
    
      
    }
    void DrawBullets(float bulletX, float bulletY) {
        rect(int(bulletX+120),int(bulletY+25),20,10);
        
              
      
    }
    void Bullets(float CharacterX, float CharacterY) {
      if(BulletsCreated == false ) {
         BulletsX = new float[choosengunBulletLimit+1];
                 BulletsY = new float[choosengunBulletLimit+1];
               StartBulletsX = new float[choosengunBulletLimit+1];
               StartBulletsY = new float[choosengunBulletLimit+1];
          BulletsCreated = true;
      }
         if (key == 'b' || key == 'B' && (BulletAmounts <= choosengunBulletLimit)) {
            
              for(int P = 0; P <= choosengunBulletLimit; P++) { 
              BulletsX[P] = CharacterX;
              BulletsY[P] = CharacterY;
              StartBulletsX[P] = CharacterX;
              StartBulletsY[P] = CharacterY;
              BulletAmounts++;
                DrawBullets(BulletsX[P], BulletsY[P]);
              
                   
              }
   
         
         }
        
        

        
    }
    
    void PickWeapon(int id) {
      if(id == PistolId) {
         Weapons Weapon = new Weapons(PistolDamage, PistolName, PistolRange,PistolId,PistolBulletLimit,PistolSpeed);
          choosengunDamage = PistolDamage;
         choosengunName = PistolName;
         choosengunRange =  PistolRange;
        choosengunId =  PistolId;
            choosengunBulletLimit = PistolBulletLimit;
                 choosengunSpeed = PistolSpeed;
       

      }
      else if(id == ShotgunId) {
          Weapons Weapon = new Weapons(ShotgunDamage, ShotgunName, ShotgunRange,ShotgunId,ShotgunBulletLimit,ShotgunNameSpeed);
           choosengunDamage = ShotgunDamage;
         choosengunName = ShotgunName;
         choosengunRange =  ShotgunRange;
        choosengunId =  ShotgunId;
            choosengunBulletLimit = ShotgunBulletLimit;
               choosengunSpeed = ShotgunNameSpeed;
      }
      else if(id == SniperId) {
          Weapons Weapon = new Weapons(SniperDamage, SnipergunName, SniperRange,SniperId,SniperBulletLimit,SnipergunSpeed);
           choosengunDamage = SniperDamage;
         choosengunName = SnipergunName;
         choosengunRange =  SniperRange;
        choosengunId =  SniperId;
            choosengunBulletLimit = SniperBulletLimit;
              choosengunSpeed = SnipergunSpeed;
      }
      else if(id == Machine_gunId) {
         Weapons Weapon = new Weapons(Machine_gunDamage, Machine_gunName, Machine_gunRange,Machine_gunId,Machine_gunBulletLimit,Machine_gunSpeed);
          choosengunDamage = Machine_gunDamage;
         choosengunName = Machine_gunName;
         choosengunRange =  Machine_gunRange;
        choosengunId =  Machine_gunId;
            choosengunBulletLimit = Machine_gunBulletLimit;
               choosengunSpeed = Machine_gunSpeed;
      }
     else if(id == RailGunId) {
         Weapons Weapon = new Weapons(RailGunDamage, RailGunName, RailGunRange,RailGunId,RailGunBulletLimit,RailGunSpeed);
          choosengunDamage = RailGunDamage;
         choosengunName = RailGunName;
         choosengunRange =  RailGunRange;
        choosengunId =  RailGunId;
        choosengunBulletLimit = RailGunBulletLimit;
        choosengunSpeed = RailGunSpeed; 
      }
     else if(id == Rocket_LauncherId) {
         Weapons Weapon = new Weapons(Rocket_LauncherDamage, Rocket_LauncherGunName, Rocket_LauncherRange,Rocket_LauncherId,Rocket_LuncherBulletLimit,Rocket_LauncherSpeed);
          choosengunDamage = Rocket_LauncherDamage;
         choosengunName = Rocket_LauncherGunName;
         choosengunRange =  Rocket_LauncherRange;
        choosengunId =  Rocket_LauncherId;
         choosengunBulletLimit = Rocket_LuncherBulletLimit;
          choosengunSpeed = Rocket_LauncherSpeed;  
     }
    }
}
