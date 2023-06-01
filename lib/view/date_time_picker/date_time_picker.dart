import 'package:flutter/material.dart';
import 'package:flutter_comp/config/responsive.dart';
import 'package:flutter_comp/page/mobile/date_time_picker/date_time_picker.dart';
import 'package:flutter_comp/page/web/date_time_picker/date_time_picker.dart';

class ViewDateTimePicker extends StatelessWidget {
  const ViewDateTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: MobileDateTimePicker(), desktop: WebDateTimePicker());
  }
}
