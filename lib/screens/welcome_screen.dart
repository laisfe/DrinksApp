import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'package:drinks_app/screens/menu_drinks_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget _introScreen() {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 2,
          navigateAfterSeconds: new MenuDrinksScreen(),
          backgroundColor: Colors.black,
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("drinks-coloridos.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
    // }
  }
}
