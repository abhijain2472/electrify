import 'package:electrify/widgets/common.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const ROUTE_NAME = "home-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Electrify'),
        actions: [
          buildLogoutButton(context),
        ],
      ),
      body: Center(
        child: Text("home page"),
      ),
    );
  }
}
