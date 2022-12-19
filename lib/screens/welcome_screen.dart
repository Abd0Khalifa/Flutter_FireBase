import 'package:flutter/material.dart';
import 'package:flutter_firebase/provider/auth_provider.dart';
import 'package:flutter_firebase/screens/home_screen.dart';
import 'package:flutter_firebase/screens/register_screen.dart';
import 'package:flutter_firebase/widgets/custem_button.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/1.png",
                  height: 300,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Let's get Started",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Never a better time than now to start.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomButton(
                    onPressed: () {
                      if (ap.isSignedIn == true) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      }
                    },
                    text: "Get Started",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
