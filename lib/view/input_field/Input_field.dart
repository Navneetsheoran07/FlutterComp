import 'package:flutter/material.dart';
import 'package:flutter_comp/config/responsive.dart';
import 'package:flutter_comp/page/mobile/input_field/input_field.dart';
import 'package:flutter_comp/page/web/input_field/Input_field.dart';

class InputFieldView extends StatelessWidget {
  const InputFieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: InputFieldMobile(),
      desktop: InputFieldWeb(),
    );
  }
}
