import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:videocallv1/Authentication/google_auth.dart';
import 'package:videocallv1/Components/privacy_policy_text.dart';
import 'package:videocallv1/Screens/Terms_Conditions_Screen/privacy_policy.dart';
import 'package:videocallv1/Screens/Terms_Conditions_Screen/terms_of_service_screen.dart';
import 'package:videocallv1/Screens/User_Permission_Screens/allow_camera_screen.dart';
import 'package:videocallv1/Screens/Welcome_Screen/Components/background.dart';
import 'package:videocallv1/Widgets/rounded_button_icon_widget.dart';
import 'package:videocallv1/constants/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Background(
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            height: size.height,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Text(
                    "Meet New People",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 24.0,
                        color: kPrimaryTextColor),
                  ),
                  SizedBox(height: size.height * 0.04),
                  Container(
                    child: Lottie.asset(
                      "assets/row/video-meetings.json",
                      animate: false,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RoundedButtonWithIconWidget(
                          onPressed: () {
                            // ignore: avoid_print
                            print("Login with Google");
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const AllowCameraScreen(),
                              ),
                            );
                          },
                          label: "Login with Google",
                          buttonColor: const Color(0xFFF2F2F2),
                          icon: SvgPicture.asset(
                            "assets/social_icons/google.svg",
                            width: 23.0,
                          ),
                        ),
                        SizedBox(height: size.height * 0.010),
                        RoundedButtonWithIconWidget(
                          onPressed: () {
                            // ignore: avoid_print
                            print("Continue with Facebook");
                          },
                          label: "Continue with Facebook",
                          buttonColor: const Color(0xFF4267B2),
                          buttonTextColor: Colors.white,
                          icon: SvgPicture.asset(
                            "assets/social_icons/facebook.svg",
                            width: 24.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: size.height * 0.010),
                        RoundedButtonWithIconWidget(
                          onPressed: () {
                            // ignore: avoid_print
                            print("Sign in with Apple");
                          },
                          label: "Sign in with Apple",
                          buttonColor: const Color(0xFF232629),
                          buttonTextColor: Colors.white,
                          icon: SvgPicture.asset(
                            "assets/social_icons/apple.svg",
                            width: 24.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: size.height * 0.06),
                        privacyPolicyText(
                          onTapTermsOfService: () {
                            // ignore: avoid_print
                            print("Terms of Service");
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const TermsOfServiceScreen(),
                              ),
                            );
                          },
                          onTapPrivacyPolicy: () {
                            // ignore: avoid_print
                            print("Privacy Policy");
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PrivacyPolicyScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
