import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:videocallv1/Screens/User_Permission_Screens/allow_mic_screen.dart';
import 'package:videocallv1/Widgets/rounded_button.dart';
import 'package:videocallv1/constants/colors.dart';

class AllowCameraScreen extends StatelessWidget {
  const AllowCameraScreen({Key? key}) : super(key: key);

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
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Lottie.asset(
                  "assets/row/camera-allow.json",
                  animate: false,
                ),
              ),
              SizedBox(height: size.height * 0.06),
              const Text(
                "Camera",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  color: kPrimaryTextColor,
                ),
              ),
              SizedBox(height: size.height * 0.008),
              const Text(
                "Allow camera access for video chat",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  color: kPrimaryTextColor,
                ),
              ),
              SizedBox(height: size.height * 0.08),
              RoundedButton(
                onPressed: () async {
                  PermissionStatus cameraStatus =
                      await Permission.camera.request();
                  if (cameraStatus == PermissionStatus.granted) {
                    // ignore: avoid_print
                    print("Permission is granted");
                    // ignore: avoid_print
                    print("Allow Camera");
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AllowMicScreen(),
                      ),
                    );
                  }
                  if (cameraStatus == PermissionStatus.denied) {
                    // ignore: avoid_print
                    print("Permission is denied");
                  }
                  // if (cameraStatus == PermissionStatus.permanentlyDenied) {
                  //   openAppSettings();
                  // }
                },
                buttonColor: Colors.blueAccent,
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
