// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_cloneapp/const_image/colors_constants.dart';
import 'package:instagram_cloneapp/const_image/image_constants.dart';
import 'package:instagram_cloneapp/view/home_screen/home_screen.dart';
import 'package:instagram_cloneapp/view/login_screen/login_screen.dart';
import 'package:instagram_cloneapp/view/select_account_screen/select_account_scree.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  List<Widget> screesList = [
    HomeScreen(),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screesList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value != 2) {
            selectedIndex = value;
            setState(() {});
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ));
          }
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: ColorConstants.primaryBlack,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ""),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: ""),

          // center bottm nav  button
          BottomNavigationBarItem(
              icon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all()),
                  child: const Icon(Icons.add)),
              label: ""),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.movie_creation_outlined,
              ),
              label: ""),
          const BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: AssetImage(ImageConstants.dpImage),
                radius: 15,
              ),
              label: ""),
        ],
      ),
    );
  }
}
