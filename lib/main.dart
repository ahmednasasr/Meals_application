import 'package:flutter/material.dart';
import 'package:resturantapp/presentation/pages/bottom_nav_page.dart';
import 'package:resturantapp/presentation/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routename:(_)=>SplashScreen(),
        BottomNavPage.rouename:(_)=>BottomNavPage(),
      },
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen());
  }
}
