import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:videocallv1/constants/colors.dart';

class RoundedButtonWithIconWidget extends StatelessWidget {
  final Function() onPressed;
  final Widget icon;
  final String label;
  final Color? buttonColor, buttonTextColor;

  const RoundedButtonWithIconWidget({
    Key? key,
    required this.onPressed,
    required this.label,
    required this.icon,
    this.buttonColor = Colors.blueAccent,
    this.buttonTextColor = kPrimaryTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      // height: size.height * 0.06,
      child: TextButton.icon(
        onPressed: onPressed,
        icon: icon,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        label: Text(
          label,
          style: TextStyle(
            color: buttonTextColor,
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          elevation: MaterialStateProperty.all(2.0),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0))),
          overlayColor:
              MaterialStateProperty.all(kPrimaryTextColor.withAlpha(20)),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0)),
        ),
      ),
    );
  }
}
