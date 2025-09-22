class User {
  String _username = "";

  set setname(String name) {
    if (name != Null && name.isNotEmpty) {
      this._username = name;
    } else {
      print("invalid input");
    }
  }

  get getname => this._username;
}

void main() {
  User user1 = User();
  user1.setname = "Soher";
  print(user1.getname);
}
