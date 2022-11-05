import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UsersController extends GetxController {
  var users = {
    'hisham@gmail.com': '12345',
    'hunter@gmail.com': 'hunter',
  };

  void signUpUser(String user, String password) {
    var newuser = {user: password};
    users.addEntries(newuser.entries);
    debugPrint('Added user $user');
  }
}
