import 'package:flutter/material.dart';
import 'package:flutter_comp/config/responsive.dart';
import 'package:flutter_comp/page/mobile/bottom_navigation/bottom_navigation.dart';
import 'package:flutter_comp/page/web/bottom_navigation/bottom_navigation.dart';

class ViewBottomNvigation extends StatelessWidget {
  const ViewBottomNvigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileBottomNavigation(), desktop: WebBottomNavigation());
  }
}
