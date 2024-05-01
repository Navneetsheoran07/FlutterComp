import 'package:flutter/material.dart';
import 'package:flutter_comp/config/responsive.dart';

import '../../page/mobile/home_page/widgets/home_data.dart';
import '../../page/web/home_page/widgets/home_data.dart';

class RewardPageView extends StatelessWidget {
  const RewardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileHomePageData(),
      desktop: WebHomePageData(),
    );
  }
}
