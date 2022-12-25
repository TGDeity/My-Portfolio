// ignore_for_file: public_member_api_docs, sort_constructors_first
class Users {
  String userName = "";
  String comments = "";
  String favs = "";

  static List<String> getUsers() {
    List<String> userList = [];
    //Duration(seconds: 1);
    int counter = 0;
    for (var i = 0; i < 10; i++) {
      counter++;
      String users = "User$counter";
      userList.add(users);
    }
    return userList;
  }
}
