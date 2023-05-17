import 'package:flutter/material.dart';
import 'package:flutter_comp/config/responsive.dart';
import 'package:flutter_comp/page/mobile/home_page/widgets/home_data.dart';
import 'package:flutter_comp/page/web/home_page/widgets/home_data.dart';

class ViewHomePageData extends StatelessWidget {
  const ViewHomePageData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileHomePageData(),
      desktop: WebHomePageData(),
    );
  }
}
