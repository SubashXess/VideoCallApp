import 'package:flutter/material.dart';
import 'package:videocallv1/Screens/Welcome_Screen/welcome_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const WelcomeScreen()),
            (route) => false);
        return true;
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/user.png", width: 100.0),
                const SizedBox(height: 20.0),
                const Text("Name : Subash Xess"),
                const Text("Email : abc@gmail.com"),
                const Text("UID : dcsj5df4d47df52dvc"),
                const SizedBox(height: 20.0),
                MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      // ignore: avoid_print
                      print("Logout");
                    },
                    child: const Text(
                      "Logout",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
