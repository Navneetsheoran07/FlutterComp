import 'package:flutter_comp/components/code_area.dart';
import 'package:flutter_comp/components/input_filed/neumorphic_search-field.dart';
import 'package:flutter_comp/controller/neumorphic_search_field.dart';
import 'package:get/get.dart';

NeumorphicSearchFieldController _controller =
    Get.put(NeumorphicSearchFieldController());

var neumorphicsearchFieldData = [
  CodeArea(
    code: _controller.basicInputFieldCode,
    codeTitle: "Input Field",
    child: NeumorphicSearchField(),
  ),
];
