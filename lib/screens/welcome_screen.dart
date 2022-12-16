import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25,horizontal:35 ),
            child: Column(
              children: [
                Image.asset(
                  "assets/1.png",
                  height: 300,
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}