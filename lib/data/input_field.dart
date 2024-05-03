import 'package:flutter_comp/components/code_area.dart';
import 'package:flutter_comp/components/input_filed/basic_input_field.dart';
import 'package:flutter_comp/controller/Input_field_controller.dart';
import 'package:get/get.dart';

InputFieldController inputFieldController = Get.put(InputFieldController());
var inputFieldData = [
  CodeArea(
    code: inputFieldController.basicInputFieldCode,
    codeTitle: "Input Field",
    code1: inputFieldController.basicInputField1Code,
    codeTitle1: "Package",
    code2: inputFieldController.basicInputField1Code,
    codeTitle2: "Controller",
    isBorder: true,
    child: BasicInputField(),
  ),
];
