// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_cloneapp/const_image/colors_constants.dart';

class CustomProfileDataWidget extends StatelessWidget {
  const CustomProfileDataWidget(
      {super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
              color: ColorConstants.primaryBlack,
              fontSize: 22,
              fontWeight: FontWeight.w600),
        ),
        Text(
          title,
          style: TextStyle(
              color: ColorConstants.primaryBlack,
              fontSize: 14,
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
