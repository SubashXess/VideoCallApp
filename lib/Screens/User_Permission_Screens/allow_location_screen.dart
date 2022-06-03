import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:videocallv1/Screens/Home_Screen/home_screen.dart';
import 'package:videocallv1/Screens/Welcome_Screen/welcome_screen.dart';
import 'package:videocallv1/Widgets/rounded_button.dart';
import 'package:videocallv1/constants/colors.dart';

class AllowLocationScreen extends StatelessWidget {
  const AllowLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: size.height,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Image.asset(
                  "assets/images/location-allow.jpg",
                  fit: BoxFit.cover,
                  height: size.height * 0.45,
                  width: double.infinity,
                ),
              ),
              SizedBox(height: size.height * 0.06),
              const Text(
                "Location",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  color: kPrimaryTextColor,
                ),
              ),
              SizedBox(height: size.height * 0.008),
              const Text(
                "Allow location to meet friends in the locations you desire for a better match experience",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  color: kPrimaryTextColor,
                ),
              ),
              SizedBox(height: size.height * 0.08),
              RoundedButton(
                onPressed: () {
                  // ignore: avoid_print
                  print("Allow Location");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                buttonColor: const Color(0xFF93D6F3),
                buttonTextColor: Colors.white,
                label: "Allow",
              ),
              SizedBox(height: size.height * 0.02),
              TextButton(
                onPressed: () {
                  // ignore: avoid_print
                  print("Letter");
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const WelcomeScreen(),
                      ),
                      (route) => false);
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                child: Text(
                  "Letter",
                  style: TextStyle(
                    color: kPrimaryTextColor.withAlpha(140),
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
