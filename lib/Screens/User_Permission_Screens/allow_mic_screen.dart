import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:videocallv1/Screens/User_Permission_Screens/allow_location_screen.dart';
import 'package:videocallv1/Widgets/rounded_button.dart';
import 'package:videocallv1/constants/colors.dart';

class AllowMicScreen extends StatelessWidget {
  const AllowMicScreen({Key? key}) : super(key: key);

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
                  "assets/images/mic-allow.jpg",
                ),
              ),
              SizedBox(height: size.height * 0.06),
              const Text(
                "Mic",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  color: kPrimaryTextColor,
                ),
              ),
              SizedBox(height: size.height * 0.008),
              const Text(
                "Allow mic access so others can hear you",
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
                  print("Allow Mic");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AllowLocationScreen(),
                    ),
                  );
                },
                buttonColor: const Color(0xFF6B7FBE),
                buttonTextColor: Colors.white,
                label: "Allow",
              ),
              SizedBox(height: size.height * 0.02),
              TextButton(
                onPressed: () {
                  // ignore: avoid_print
                  print("Go to Settings");
                  AppSettings.openAppSettings();
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                child: Text(
                  "Go to Settings",
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
