import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_comp/config/colors.dart';
import 'package:get/get.dart';
// import 'package:highlight/highlight_core.dart' show highlight;
import 'package:highlight/languages/dart.dart';

class CodeArea extends StatelessWidget {
  final String code;
  final Widget child;
  const CodeArea({super.key, required this.code, required this.child});

  @override
  Widget build(BuildContext context) {
    CodeController _codeController = CodeController(text: code, language: dart);
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: divColor),
      child: Column(
        children: [
          child,
          SizedBox(height: 20),
          Stack(
            children: [
              Container(
                child: CodeField(
                  decoration: BoxDecoration(
                    color: titleColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  controller: _codeController!,
                  enabled: false,
                ),
              ),
              Positioned(
                top: 4,
                right: 4,
                child: InkWell(
                  onTap: () => {
                    Clipboard.setData(ClipboardData(text: code)),
                    Get.showSnackbar(const GetSnackBar(
                      message: "Copied to clipboard",
                    )),
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.copy,
                          size: 15,
                        ),
                        Text("Copy"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
