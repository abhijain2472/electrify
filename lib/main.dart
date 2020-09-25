import 'package:electrify/providers/service_provider.dart';
import 'package:electrify/screens/authentication_screen.dart';
import 'package:electrify/screens/home_screen.dart';
import 'package:electrify/screens/login_screen.dart';
import 'package:electrify/screens/otp_screen.dart';
import 'package:electrify/screens/signin_auth.dart';
import 'package:electrify/services/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(AuthService(), tag: 'auth');
  Get.put(ServiceController(), tag: 'service');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomeScreen.ROUTE_NAME: (ctx) => HomeScreen(),
        LoginScreen.ROUTE_NAME: (ctx) => LoginScreen(),
        SignInAuthScreen.ROUTE_NAME: (ctx) => SignInAuthScreen(),
        AuthenticationScreen.ROUTE_NAME: (ctx) => AuthenticationScreen(),
        OTPScreen.ROUTE_NAME: (ctx) => OTPScreen(),
      },
      initialRoute: AuthenticationScreen.ROUTE_NAME,
    );
  }
}
