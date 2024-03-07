// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_cloneapp/const_image/colors_constants.dart';
import 'package:instagram_cloneapp/view/add_post_screen/tabs/library_tab.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            leadingWidth: 80,
            leading: TextButton(
              child: Text(
                "Cancel",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.primaryBlack,
                    fontSize: 16),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Recents"),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.keyboard_arrow_down_outlined)
              ],
            ),
            centerTitle: true,
            actions: [
              TextButton(
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.primaryBlack,
                    fontSize: 16,
                  ),
                ),
                onPressed: () {},
              )
            ],
          ),
          bottomNavigationBar: TabBar(
            indicatorWeight: 1,
            dividerHeight: 0,
            indicatorColor: ColorConstants.primaryBlack,
            labelColor: ColorConstants.primaryBlack,
            unselectedLabelColor: ColorConstants.primaryBlack.withOpacity(.1),
            indicator: BoxDecoration(),
            tabs: [
              Tab(
                text: "Library",
              ),
              Tab(
                text: "Photo",
              ),
              Tab(
                text: "Video",
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
                  height: 375,
                  alignment: Alignment.bottomRight,
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: ColorConstants.primaryBlack.withOpacity(.4),
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.all_inclusive,
                        size: 25,
                        color: ColorConstants.lightGrey,
                      ),
                    ),
                    SizedBox(width: 14),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: ColorConstants.primaryBlack.withOpacity(.4),
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.space_dashboard_outlined,
                        size: 25,
                        color: ColorConstants.lightGrey,
                      ),
                    ),
                    SizedBox(width: 14),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: ColorConstants.primaryBlack.withOpacity(.4),
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.filter_none,
                            size: 25,
                            color: ColorConstants.lightGrey,
                          ),
                          SizedBox(width: 14),
                          Text(
                            "SELECT MULTIPLE",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.primaryWhite),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
                LibraryTab()
              ],
            ),
          )),
    );
  }
}
