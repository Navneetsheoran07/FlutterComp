import 'package:flutter/material.dart';
import 'package:flutter_comp/components/conreibutors/contributors.dart';
import 'package:flutter_comp/components/search/my_search_bar.dart';
import 'package:flutter_comp/config/colors.dart';
import 'package:flutter_comp/controller/sidebar_controller.dart';
import 'package:get/get.dart';

class WebHomePageData extends StatelessWidget {
  const WebHomePageData({super.key});

  @override
  Widget build(BuildContext context) {
    SideBarController sideBarController = Get.put(SideBarController());
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(6),
            height: 70,
            decoration:  BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 300,
                  child: Expanded(
                    child: MySearchBar(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Flutter Comp",
                        style: Theme.of(context).textTheme.headlineLarge),
                    Text(
                        "This is a Flutter Components Website you can you this for creating your own website you can copy the code from here and use it in your website",
                        style: Theme.of(context).textTheme.titleSmall),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () => sideBarController.index.value = 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
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
              Image.asset(
                "assets/images/boy_image.png",
                width: 300,
              )
            ],
          ),
          SizedBox(height: 40),
          Divider(
            thickness: 2,
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Contributors",
                  style: Theme.of(context).textTheme.titleSmall),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Contributors(),
              SizedBox(width: 10),
              Contributors(),
            ],
          ),
          // SizedBox(height: 40),
        ],
      ),
    ));
  }
}
