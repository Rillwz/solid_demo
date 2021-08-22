// Correct Example - I-nterface Segregation Principle

abstract class Hero {
  void regularAttack();
}

// !------------------------------------------------

abstract class IMagicCaster {
  void castMagic();
}

abstract class IHealer {
  void heal();
}

abstract class IStealer {
  void stealMoney();
}

// !------------------------------------------------

class Thief extends Hero implements IStealer {
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

class WhiteMage extends Hero implements IHealer, IMagicCaster {
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
}

// !------------------------------------------------

class BlackMage extends Hero implements IMagicCaster {
  @override
  void castMagic() {
    // do something ...
  }

  @override
  void regularAttack() {
    // do something ...
  }
}
