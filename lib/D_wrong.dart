// Wrong Example - D-ependency Inversion Principle

class User {
  // User related things
}

class UserManager {
  void saveUserData(User user) {
    // connect to firebase
    // save data
  }
}
