// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_cloneapp/const_image/colors_constants.dart';

class CustomStoryAvatar extends StatelessWidget {
  const CustomStoryAvatar({
    super.key,
    this.isLIve = false,
    required this.proPic,
    required this.userName,
  });

  final String proPic;
  final String userName;
  final bool isLIve;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                SizedBox(height: 110),
                Container(
                  padding: EdgeInsets.all(3),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient:
                          LinearGradient(end: Alignment.bottomRight, colors: [
                        ColorConstants.primaryRed,
                        ColorConstants.primaryBlue,
                        ColorConstants.primaryYellow
                      ])),
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: ColorConstants.lightGrey,
                        shape: BoxShape.circle),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(proPic),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    child: isLIve == true
                        ? Container(
                            padding:
                                EdgeInsetsDirectional.symmetric(vertical: 5),
                            width: 50,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 5, color: Colors.white)),
                            child: Center(
                              child: Text(
                                "Live",
                                style: TextStyle(
                                    color: ColorConstants.primaryWhite,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))
                        : SizedBox())
              ],
            ),
            Text(userName)
          ],
        ),
      ),
    );
  }
}
