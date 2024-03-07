// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:instagram_cloneapp/const_image/colors_constants.dart';
import 'package:instagram_cloneapp/const_image/image_constants.dart';
import 'package:instagram_cloneapp/global_widgets/custom_button.dart';
import 'package:instagram_cloneapp/view/profile_screen/widget/custom_profile_data_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.lock),
              Text(
                "jacob_w",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(Icons.keyboard_arrow_down_rounded)
            ],
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 48,
                          backgroundColor:
                              ColorConstants.primaryBlack.withOpacity(.1),
                          child: CircleAvatar(
                              radius: 46,
                              backgroundColor: ColorConstants.primaryWhite,
                              child: CircleAvatar(
                                radius: 43,
                                backgroundColor: ColorConstants.primaryBlack,
                                backgroundImage:
                                    AssetImage(ImageConstants.dpImage),
                              )),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomProfileDataWidget(
                                  title: "Posts", value: "90"),
                              CustomProfileDataWidget(
                                  title: "Followers", value: "767"),
                              CustomProfileDataWidget(
                                  title: "Following", value: "7667"),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "lksdhjagsi",
                      style: TextStyle(
                          color: ColorConstants.primaryBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                        maxLines: 3,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        "Lorem Ipsum is simpl dummy text of the printing a the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                    SizedBox(
                      height: 16,
                    ),
                    CustomButton(
                      text: "Edit Profile",
                      verticalPadding: 4,
                      haveBorder: true,
                      buttonColor: Colors.transparent,
                      textColor: ColorConstants.primaryBlack,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor:
                                    ColorConstants.primaryBlack.withOpacity(.1),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: ColorConstants.primaryWhite,
                                  child: Icon(Icons.add),
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Add",
                                style: TextStyle(
                                    color: ColorConstants.primaryBlack,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          Row(
                            children: List.generate(
                              10,
                              (index) => Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 32,
                                      backgroundColor: ColorConstants
                                          .primaryBlack
                                          .withOpacity(.1),
                                      child: CircleAvatar(
                                          radius: 30,
                                          backgroundColor:
                                              ColorConstants.primaryWhite,
                                          child: CircleAvatar(
                                            radius: 28,
                                            backgroundColor:
                                                ColorConstants.primaryBlack,
                                            backgroundImage: NetworkImage(
                                                "https://images.pexels.com/photos/10031899/pexels-photo-10031899.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load"),
                                          )),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "title",
                                      style: TextStyle(
                                          color: ColorConstants.primaryBlack,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                height: 0,
              ),
              TabBar(
                  indicatorWeight: 1,
                  dividerHeight: 0,
                  indicatorColor: ColorConstants.primaryBlack,
                  labelColor: ColorConstants.primaryBlack,
                  unselectedLabelColor:
                      ColorConstants.primaryBlack.withOpacity(.3),
                  indicatorSize: TabBarIndicatorSize.tab,
                  onTap: (index) {
                    setState(() {
                      this.currentTabIndex = index;
                    });
                  },
                  tabs: [
                    Tab(
                      icon: Icon(Icons.grid_on_sharp),
                    ),
                    Tab(
                      icon: Icon(Icons.person_pin_rounded),
                    )
                  ]),
              currentTabIndex == 0
                  ? GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 100,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) =>
                          Container(color: Colors.amber),
                    )
                  : GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 100,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) =>
                          Container(color: Colors.green),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
