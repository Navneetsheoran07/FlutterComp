import 'package:flutter/material.dart';
import 'package:flutter_comp/config/responsive.dart';
import 'package:flutter_comp/page/mobile/app_bar/app_bar.dart';
import 'package:flutter_comp/page/web/app_bar/app_bar.dart';

class ViewAppBar extends StatelessWidget {
  const ViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileAppBar(),
      desktop: WebAppBar(),
    );
  }
}
