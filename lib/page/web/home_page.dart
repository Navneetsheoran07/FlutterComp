import 'package:flutter/material.dart';
import 'package:flutter_comp/config/colors.dart';

import '../../components/my_drawer.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(flex: 2, child: MyDrawer()),
        Expanded(
          flex: 9,
          child: Container(),
        ),
      ],
    ));
  }
}
