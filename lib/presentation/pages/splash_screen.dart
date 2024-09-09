import 'package:flutter/material.dart';
import 'package:resturantapp/presentation/pages/bottom_nav_page.dart';

class SplashScreen extends StatefulWidget {
  static const String routename="splash";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),() {
      Navigator.pushNamed(context, BottomNavPage.rouename);
      });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: Image(image: AssetImage("assets/images/various-vegetables-black-table-with-space-message_1220-616.jpg"),fit: BoxFit.cover,),
      ),
    );
  }
}
