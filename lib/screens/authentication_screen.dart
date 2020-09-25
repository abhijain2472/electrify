import 'package:electrify/models/user.dart';
import 'package:electrify/screens/home_screen.dart';
import 'package:electrify/services/auth_service.dart';
import 'package:electrify/utils/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_screen.dart';

class AuthenticationScreen extends StatefulWidget {
  static const ROUTE_NAME = 'AuthenticationScreen';
  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  bool isLoggedIn = false;

  Future<void> checkAuthentication() async {
    User user = await SharedPref.readUserFromSharedRef('loggedInUser');
    if (user != null) {
      setState(() {
        isLoggedIn = true;
        Get.put(AuthService(), tag: 'auth').setLoggedInUser(user);
        print('logged in user :$user');
      });
    } else {
      setState(() {
        isLoggedIn = false;
        print('no Logged in user ');
      });
    }
  }

  @override
  void initState() {
    checkAuthentication();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLoggedIn ? HomeScreen() : LoginScreen();
  }
}
