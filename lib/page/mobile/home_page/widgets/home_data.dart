import 'package:flutter/material.dart';
import 'package:flutter_comp/controller/sidebar_controller.dart';

import '../../../../config/colors.dart';

class MobileHomePageData extends StatelessWidget {
  const MobileHomePageData({super.key});

  @override
  Widget build(BuildContext context) {
    SideBarController sideBarController = SideBarController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/boy_image.png",
                  width: 300,
                ),
                SizedBox(height: 50),
                Container(
                  width: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Flutter Comp",
                          style: Theme.of(context).textTheme.headlineLarge),
                      SizedBox(height: 15),
                      Text(
                          "This is a Flutter Components Website you can you this for creating your own website you can copy the code from here and use it in your website",
                          style: Theme.of(context).textTheme.titleSmall),
                      SizedBox(height: 35),
                      InkWell(
                        onTap: () => sideBarController.index.value = 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: buttonColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 200,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.explore,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text("Explore Now",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(color: Colors.white))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
