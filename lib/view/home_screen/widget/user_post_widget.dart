// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:instagram_cloneapp/const_image/colors_constants.dart';

class UserPostWidget extends StatefulWidget {
  const UserPostWidget(
      {super.key,
      required this.username,
      required this.proPic,
      required this.location,
      required this.postImageList,
      this.isLiked = false,
      this.caption});
  final String username;
  final String proPic;
  final String location;
  final List<String> postImageList;
  final bool isLiked;
  final String? caption;

  @override
  State<UserPostWidget> createState() => _UserPostWidgetState();
}

class _UserPostWidgetState extends State<UserPostWidget> {
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primaryWhite,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(widget.proPic),
            ),
            title: Row(
              children: [
                Text(
                  widget.username,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.verified,
                  size: 15,
                  color: ColorConstants.primaryBlue,
                )
              ],
            ),
            subtitle: Text(
              "Tokyo, Japan",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 11),
            ),
            trailing: Icon(Icons.more_horiz),
          ),
          Stack(
            children: [
              SizedBox(
                height: 375,
                child: PageView.builder(
                  onPageChanged: (value) {
                    currentPage = value + 1;
                    setState(() {});
                  },
                  itemCount: widget.postImageList.length,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(widget.postImageList[index]))),
                    child: Container(),
                  ),
                ),
              ),
              Positioned(
                  right: 20,
                  top: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.6),
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      "$currentPage/${widget.postImageList.length}",
                      style: TextStyle(color: ColorConstants.primaryWhite),
                    ),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        widget.isLiked == true
                            ? Icon(
                                Icons.favorite_rounded,
                                size: 25,
                                color: ColorConstants.normalRed,
                              )
                            : Icon(Icons.favorite_border_rounded, size: 25),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.maps_ugc_rounded,
                          size: 25,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.send,
                          size: 25,
                        ),
                        SizedBox(
                          width: 16,
                        )
                      ],
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        widget.postImageList.length,
                        (index) => Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: CircleAvatar(
                            backgroundColor: (index == currentPage - 1)
                                ? ColorConstants.primaryBlue
                                : null,
                            radius: (index == currentPage - 1) ? 5 : 3,
                          ),
                        ),
                      ),
                    )),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(
                      Icons.bookmark_border,
                      size: 25,
                    )
                  ],
                ),
                SizedBox(
                  height: 13.5,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.proPic),
                      radius: 10,
                    ),
                    SizedBox(width: 16),
                    RichText(
                        text: TextSpan(
                            text: "Liked by",
                            style:
                                TextStyle(color: ColorConstants.primaryBlack),
                            children: [
                          TextSpan(
                            text: widget.username,
                            style: TextStyle(
                                color: ColorConstants.primaryBlack,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " and"),
                          TextSpan(
                              text: " 56,789 others",
                              style: TextStyle(
                                  color: ColorConstants.primaryBlack,
                                  fontWeight: FontWeight.bold))
                        ]))
                  ],
                ),
                SizedBox(height: 13.5),
                RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                      text: widget.username,
                      style: TextStyle(
                          color: ColorConstants.primaryBlack,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: "${widget.caption}" ?? "",
                            style: TextStyle(
                                color: ColorConstants.primaryBlack,
                                fontWeight: FontWeight.normal))
                      ]),
                ),
                SizedBox(
                  height: 13.5,
                ),
                Text(
                  "September 18 ",
                  style: TextStyle(
                      color: ColorConstants.primaryBlack.withOpacity(.5),
                      fontSize: 11,
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
