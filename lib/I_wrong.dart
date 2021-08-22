// Wrong Example - I-nterface Segregation Principle

abstract class IHeroAbility {
  void heal();
  void castMagic();
  void stealMoney();
}

abstract class Hero implements IHeroAbility {
  void regularAttack();
}

// !------------------------------------------------

class Thief extends Hero {
  @override
  void castMagic() {
    // do nothing
  }

  @override
  void heal() {
    // do nothing
  }

  @override
  void regularAttack() {
    // do something ...
  }

  @override
  void stealMoney() {
    // do something ...
  }
}

// !------------------------------------------------

class WhiteMage extends Hero {
  @override
  void castMagic() {
    // do something ...
  }

  @override
  void heal() {
    // do something ...
  }

  @override
  void regularAttack() {
    // do nothing
  }

  @override
  void stealMoney() {
    // do nothing
  }
}

// !------------------------------------------------

class BlackMage extends Hero {
  @override
  void castMagic() {
    // do something ...
  }

  @override
  void heal() {
    // do nothing
  }

  @override
  void regularAttack() {
    // do something ...
  }

  @override
  void stealMoney() {
    // do nothing
  }
}
