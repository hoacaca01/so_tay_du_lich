import 'package:flutter/material.dart';
import 'package:hoa12_dulich/Manhinh/welcomScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Du Lịch Quảng Bình',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: kPrimaryColor,
      //   scaffoldBackgroundColor: kBackgroundColor,
      //   textTheme: GoogleFonts.merriweatherTextTheme(Theme.of(context).textTheme),
      // ),
      home: WelcomeScreen(),
    );
  }
}
