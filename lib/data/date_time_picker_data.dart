import 'package:flutter_comp/components/code_area.dart';
import 'package:flutter_comp/components/date_time_picker/material_date_picker.dart';
import 'package:flutter_comp/controller/date_time_picker_controller.dart';
import 'package:get/get.dart';

DateTimePickerController dateTimePickerController =
    Get.put(DateTimePickerController());

var dateTimeList = [
  CodeArea(
    code: dateTimePickerController.materialTimePicker,
    child: MaterialDatePicker(),
  )
];
