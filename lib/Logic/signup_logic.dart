import 'package:firstapp/Model/data_base.dart';
import 'package:firstapp/Model/user.dart';

bool signUp(String name, String email, String pass) {
  bool flag = true;
  appUsers.forEach((key, value) {
    if (key == email) {
      flag = false;
    }
  });
  if (flag) {
    User newUser = User(userName: name, useremail: email, password: pass);
    appUsers[email] = newUser;
  }
  return flag;
}
