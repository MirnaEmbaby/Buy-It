import 'package:flutter/material.dart';
import 'screens/loginScreen.dart';

void main() => runApp(MyApp());

Color Y = Color.fromRGBO(254, 193, 7, 1);
Color LY = Color.fromRGBO(255, 228, 141, 1);
Color B = Colors.black;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return LoginScreen(Y, LY, B);
  }
}
