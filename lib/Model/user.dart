class User {
  String userName, useremail, password;
  User(
      {required this.userName,
      required this.useremail,
      required this.password});

  String getUserName() {
    return userName;
  }

  String getpassword() {
    return password;
  }

  String getuseremail() {
    return useremail;
  }

  void setuseremail(String useremail) {
    this.useremail = useremail;
  }

  void setUserName(String userName) {
    this.userName = userName;
  }

  void setpassword(String password) {
    this.password = password;
  }
}
