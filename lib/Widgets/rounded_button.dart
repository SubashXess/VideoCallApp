import 'package:flutter/material.dart';
import 'package:videocallv1/constants/colors.dart';

class RoundedButton extends StatelessWidget {
  final Function() onPressed;
  final String label;
  final Color? buttonColor, buttonTextColor;

  const RoundedButton(
      {Key? key,
      required this.onPressed,
      required this.label,
      this.buttonColor,
      this.buttonTextColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // height: size.height * 0.06,
      child: TextButton(
        onPressed: onPressed,
        clipBehavior: Clip.antiAliasWithSaveLayer,
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
        child: Text(
          label,
          style: TextStyle(
            color: buttonTextColor,
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
