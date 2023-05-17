import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_comp/config/colors.dart';
// import 'package:highlight/highlight_core.dart' show highlight;
import 'package:highlight/languages/dart.dart';

class CodeArea extends StatelessWidget {
  final String code;
  const CodeArea({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    CodeController _codeController = CodeController(
      text: code,
      language: dart,
    );
    return Container(
      decoration: BoxDecoration(
        color: divColor,
      ),
      child: Column(
        children: [
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
                  onTap: () {
                    Clipboard.setData(ClipboardData(text: code));
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
