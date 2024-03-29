//// Correct Example - D-ependency Inversion Principle

class User {
  // User related things
}

class UserManager {
  final IDataStorage dataStorage;

  UserManager(this.dataStorage);

  void saveUserData(User user) {
    dataStorage.saveData(user);
  }
}

abstract class IDataStorage {
  void saveData(User user);
}

class FirebaseStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // connect to firebase
    // save data
  }
}

class LocalStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // connect to local storage
    // save data
  }
}
