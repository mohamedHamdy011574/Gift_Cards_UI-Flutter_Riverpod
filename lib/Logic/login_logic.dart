import 'package:firstapp/Model/data_base.dart';

int logIn(String email, String pass) {
  int flag = 0;
  appUsers.forEach((key, value) {
    if (key == email) {
      if (value.getpassword() == pass) {
        flag = 1;
      }
    }
  });
  return flag;
}
