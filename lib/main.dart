import 'package:flutter/material.dart';

import 'package:drinks_app/screens/menu_drinks_screen.dart';
import 'package:drinks_app/screens/recipes_screen.dart';
import 'package:drinks_app/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cursos App',
      theme: new ThemeData(
        primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
        fontFamily: 'Arial',
      ),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/menu_drinks': (context) => MenuDrinksScreen(),
        '/recipes_screen': (context) => RecipesScreen(),
      },
    );
  }
}

/*
theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
*/
