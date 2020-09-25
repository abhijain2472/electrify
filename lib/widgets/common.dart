import 'package:electrify/screens/login_screen.dart';
import 'package:electrify/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildLogoutButton(BuildContext context) {
  return IconButton(
    icon: Icon(Icons.exit_to_app),
    onPressed: () async {
      await AuthService().signOut();
      Get.offAllNamed(LoginScreen.ROUTE_NAME);
      // Navigator.pushReplacementNamed(context, LoginScreen.ROUTE_NAME);
    },
  );
}
