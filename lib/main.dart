import 'package:bookly/constants.dart';
import 'package:bookly/feature/Splash/Peresntation/Views/SplashView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kColor,
      ),
      home: const SplashView(),
    );
  }
}
