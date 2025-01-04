import 'package:flutter/material.dart';
import 'package:voice_app/colors/pallete.dart';
import 'package:voice_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove the red line of the left side coner
      debugShowCheckedModeBanner: false,

      // set the app title in this App
      title: "Voice Assistant App",

      // set the Them color in the apps
      theme: ThemeData.light(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: Pallete.whiteColor,

        // setting up App Bar theme color
        appBarTheme: const AppBarTheme(backgroundColor: Pallete.whiteColor),
      ),

      

      // home page
      home: HomePage(),
    );
  }
}
