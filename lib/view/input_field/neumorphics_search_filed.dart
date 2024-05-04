import 'package:flutter/material.dart';
import 'package:flutter_comp/config/responsive.dart';
import 'package:flutter_comp/page/mobile/input_field/input_field.dart';
import 'package:flutter_comp/page/web/input_field/Input_field.dart';
import 'package:flutter_comp/page/web/input_field/neumorphics_search_field.dart';

import '../../page/mobile/input_field/neumorphics_search_field.dart';

class NeumorphicSearchFieldView extends StatelessWidget {
  const NeumorphicSearchFieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: NeumorphicSearchFieldMobile(),
      desktop: NeumorphicSearchFieldWeb(),
    );
  }
}
