class Weapons {
    int Damage;
    String Name;
    int Range;
    int ID;
    void setup() {
       NewWeapons = new Weapons(PistolDamage,"Pistol", PistolRange, PistolId);
    }
    // Constructor
    Weapons(int damage, String name, int range, int id) {
        this.Damage = damage;
        this.Name = name;
        this.Range = range;
        this.ID = id;
    }
    //void Shooting() {
    //     if (key == 'b' || key == 'B') {
           
    //    }
    //}
    //void Bullets
    void PickWeapon(int id) {
      if(id == PistolId) {
         Weapons Pistol = new Weapons(PistolDamage, PistolName, PistolRange,PistolId);
          choosengunDamage = PistolDamage;
         choosengunName = PistolName;
         choosengunRange =  PistolRange;
        choosengunId =  PistolId;
      }
      else if(id == ShotgunId) {
          Weapons Shotgun = new Weapons(ShotgunDamage, ShotgunName, ShotgunRange,ShotgunId);
           choosengunDamage = ShotgunDamage;
         choosengunName = ShotgunName;
         choosengunRange =  ShotgunRange;
        choosengunId =  ShotgunId;
      }
      else if(id == SniperId) {
          Weapons Sniper = new Weapons(SniperDamage, SnipergunName, SniperRange,SniperId);
           choosengunDamage = SniperDamage;
         choosengunName = SnipergunName;
         choosengunRange =  SniperRange;
        choosengunId =  SniperId;
      }
      else if(id == Machine_gunId) {
         Weapons Machine_gun = new Weapons(Machine_gunDamage, Machine_gunName, Machine_gunRange,Machine_gunId);
          choosengunDamage = Machine_gunDamage;
         choosengunName = Machine_gunName;
         choosengunRange =  Machine_gunRange;
        choosengunId =  Machine_gunId;
      }
     else if(id == RailGunId) {
         Weapons RailGun = new Weapons(RailGunDamage, RailGunName, RailGunRange,RailGunId);
          choosengunDamage = RailGunDamage;
         choosengunName = RailGunName;
         choosengunRange =  RailGunRange;
        choosengunId =  RailGunId;
      }
     else if(id == Rocket_LauncherId) {
         Weapons Rocket_Launcher = new Weapons(Rocket_LauncherDamage, Rocket_LauncherGunName, Rocket_LauncherRange,Rocket_LauncherId);
          choosengunDamage = Rocket_LauncherDamage;
         choosengunName = Rocket_LauncherGunName;
         choosengunRange =  Rocket_LauncherRange;
        choosengunId =  Rocket_LauncherId;
     }
    }
}
