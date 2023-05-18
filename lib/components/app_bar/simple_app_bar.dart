import 'package:flutter/material.dart';

import '../../config/colors.dart';

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: whiteColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_rounded,
              color: whiteColor,
            ),
          ),
        ],
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.format_align_left_sharp,
              color: whiteColor,
            )),
        backgroundColor: buttonColor,
        title: Text(
          "A P P B A R",
          style: TextStyle(
            color: whiteColor,
          ),
        ),
      ),
      body: Center(
        child: Text("Simple App bar"),
      ),
    );
  }
}
