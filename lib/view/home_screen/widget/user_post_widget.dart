// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:instagram_cloneapp/const_image/colors_constants.dart';

class UserPostWidget extends StatefulWidget {
  const UserPostWidget({super.key});

  @override
  State<UserPostWidget> createState() => _UserPostWidgetState();
}

class _UserPostWidgetState extends State<UserPostWidget> {
  List<String> postImageList = [
    "https://images.pexels.com/photos/2775196/pexels-photo-2775196.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/910411/pexels-photo-910411.jpeg?auto=compress&cs=tinysrgb&w=400",
    "https://images.pexels.com/photos/1955134/pexels-photo-1955134.jpeg?auto=compress&cs=tinysrgb&w=400"
  ];
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
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=400"),
            ),
            title: Row(
              children: [
                Text(
                  "joshual_1",
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
                  itemCount: postImageList.length,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(postImageList[index]))),
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
                      "$currentPage/${postImageList.length}",
                      style: TextStyle(color: ColorConstants.primaryWhite),
                    ),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13.5),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      size: 25,
                    ),
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
                    postImageList.length,
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
          )
        ],
      ),
    );
  }
}
