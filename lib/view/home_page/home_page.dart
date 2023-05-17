import 'package:flutter/material.dart';
import 'package:flutter_comp/config/responsive.dart';
import 'package:flutter_comp/page/mobile/home_page.dart';
import 'package:flutter_comp/page/web/home_page.dart';

class ViewHomePage extends StatelessWidget {
  const ViewHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileHomePage(),
      desktop: WebHomePage(),
    );
  }
}
