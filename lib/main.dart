
import 'package:ecom/screen/splashscreen.dart';
import 'package:flutter/material.dart';
// import 'screen/navigator.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

    theme: ThemeData(
primaryColor: Color.fromARGB(255, 121, 0, 169),
    ) ,

home: splashScreen(),


    );
  }
}
