import 'package:flutter/material.dart';
import 'package:flutter_comp/data/app_bar_data.dart';
import 'package:flutter_comp/data/button_data.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';

import '../../../data/bottom_navigation_data.dart';

class MobileAppBar  extends StatelessWidget {
  const MobileAppBar ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(5),
      child: SingleChildScrollView(
        child: MasonryView(
          listOfItem: appBarList,
          itemBuilder: (item) => item,
          numberOfColumn: 2,
          itemPadding: 4,
          itemRadius: 10,
        ),
      ),
    ));
  }
}
