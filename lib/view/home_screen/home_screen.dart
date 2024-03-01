// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_cloneapp/const_image/image_constants.dart';
import 'package:instagram_cloneapp/view/dummyDb.dart';
import 'package:instagram_cloneapp/view/home_screen/widget/custom_story_avatar.dart';
import 'package:instagram_cloneapp/view/home_screen/widget/user_post_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.camera_alt_outlined),
        title: Image.asset(
          ImageConstants.textIcon,
          scale: 1.5,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.ios_share_rounded))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
              height: 160,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    DummyDb.storyList.length,
                    (index) => CustomStoryAvatar(
                        proPic: DummyDb.storyList[index]["proPic"],
                        isLIve: DummyDb.storyList[index]["isLive"],
                        userName: DummyDb.storyList[index]["userName"]),
                  ),
                ),
              )),
          UserPostWidget()
        ],
      ),
    );
  }
}
