// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_cloneapp/const_image/colors_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.buttonColor = ColorConstants.primaryBlue,
      this.haveBorder = false,
      this.verticalPadding = 15,
      this.textColor = ColorConstants.primaryWhite,
      this.onTap});

  final String text;
  final Color textColor;
  final Color buttonColor;
  final bool haveBorder;
  final double verticalPadding;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: verticalPadding),
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(5),
            border: haveBorder == true
                ? Border.all(color: ColorConstants.primaryBlack.withOpacity(.4))
                : null),
        child: Center(
          child: Text(text,
              style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              )),
        ),
      ),
    );
  }
}
