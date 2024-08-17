import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/home/home_screen.dart';

void main(){
  runApp;
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
      },
    );
  }
}
