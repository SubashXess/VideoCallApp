import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:videocallv1/constants/colors.dart';

Widget privacyPolicyText(
    {Function()? onTapTermsOfService, onTapPrivacyPolicy}) {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      style: TextStyle(color: kPrimaryTextColor.withAlpha(180), fontSize: 14.0),
      children: [
        const TextSpan(
          text: "By logging in, you are agreeing to our ",
        ),
        TextSpan(
          text: "Terms of Service",
          recognizer: TapGestureRecognizer()..onTap = onTapTermsOfService,
          style: const TextStyle(
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.w500,
          ),
        ),
        const TextSpan(
          text: " and ",
        ),
        TextSpan(
          text: "Privacy Policy",
          recognizer: TapGestureRecognizer()..onTap = onTapPrivacyPolicy,
          style: const TextStyle(
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.w500,
          ),
        ),
        const TextSpan(
          text: ".",
        ),
      ],
    ),
  );
}
