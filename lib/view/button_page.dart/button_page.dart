import 'package:flutter/material.dart';
import 'package:flutter_comp/config/responsive.dart';
import 'package:flutter_comp/page/mobile/button_page/button_page.dart';
import 'package:flutter_comp/page/web/button_page/button_page.dart';

class ViewButtonPage extends StatelessWidget {
  const ViewButtonPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileButtonPage(),
      desktop: WebButtonPage(),
    );
  }
}
