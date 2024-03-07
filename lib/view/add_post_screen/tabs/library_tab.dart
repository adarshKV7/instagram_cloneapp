// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LibraryTab extends StatelessWidget {
  const LibraryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(color: Colors.green),
      ),
    );
  }
}
