class Loadout {
  //This class exhibits Encapsulation because it bundles up a bunch of code and limits its access
  //To only those who have extended to this specific class. The statements in this block of code
  //Cannot be changed by outside classes. Therefore any form of change must be made within this class only.
  void shootGun(){
    print("Gun has been fired!");
    print("Outcoming damage: 50");
  }
  void useScope(){
    print("Scope Multiplier: 1.5x");
  }
}

class Classic extends Loadout {
  //This class exhibits Inheritance because the Classic class inherited the method of shootGun() and
  //UseScope(). Therefore, insted of creating a new method with the same contents for shootGun(), i can just
  //Reuse the shootGun() method from the Loadout class.
  
  //This class exhibits Polymorphism because for a basic pistol, a scope is unavailable.
  //Therefore, the form of the useScope() funciton must be changed since it cannot display a value
  //For the Scope Multiplier.
  @override
  void useScope(){
    print("Scope unavailable for Clasic!");
  }
}

class Vandal extends Loadout {
  //This class exhibits Polymorphism because since the Vandal is similar to an AK-47, it has a higher damage output
  //For long distance headshots. The form of the shootGun() method must be adjusted accordingly since the base damage from the
  //Loadout class is only 50.
  @override
  void shootGun(){
    print("Vandal has been fired!");
    print("Outcoming damage: 150");
  }
}

class Shorty extends Loadout {
  //This class exhibits Polymorphism because the Shorty is a small shotgun with only 2 shells. It deals a fair amount of
  //damage when the enemy is near. Therefore, the base damage output must be overridden to fit to the ammunition of the shorty and
  //Its damage output.
  @override
  void shootGun(){
    print("Shorty has been fired!");
    print("Outcoming damage: 85 for 2 shots!");
  }
}

class Operator extends Loadout {
  //This clas exhibits Polymorphism because the Operator is a Heavy Sniper Rifle that can scope in on a far-away enemy
  //And eliminate them with 1 bullet. In order to adjust the damage output and the scope multiplier accordingly, the code must be
  //Overridden.
  @override
  void shootGun(){
    print("Operator has been fired!");
    print("Outcoming damage: 150");
  }
  void useScope(){
    print("Scope Multiplier: 3.0x");
  }
}


void main() {
  //This section exhibits Abstraction because it only focuses on a specific gun and a specific set of
  //Commands and/or actions. The user isnt interested on how to print or how to use the scope. He/She
  //Just wants to be able to use the scope and shoot the gun. Therefore, only specific statements will be printed out.
  Operator op  = Operator();
  op.useScope();
  op.shootGun();
  print("----------------------");
  Shorty sh = Shorty();
  sh.useScope();
  sh.shootGun();
  print("----------------------");
  Vandal vn = Vandal();
  vn.useScope();
  vn.shootGun();
  print("----------------------");
  Classic cs = Classic();
  cs.useScope();
  cs.shootGun();
}
