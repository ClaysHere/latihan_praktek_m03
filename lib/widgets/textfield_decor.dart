import 'package:flutter/material.dart';

class TextfieldDecor extends StatelessWidget {
  TextfieldDecor(
      {super.key, this.lines, required this.hintText, required this.textC});
  OutlineInputBorder borderTextFieldStyle =
      OutlineInputBorder(borderSide: BorderSide(width: 1));

  int? lines = 1;
  String hintText;
  TextEditingController textC;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textC,
      style: TextStyle(fontSize: 14),
      maxLines: lines,
      decoration: InputDecoration(
          hintText: hintText,
          isDense: true,
          contentPadding: EdgeInsets.all(8),
          enabledBorder: borderTextFieldStyle,
          focusedBorder: borderTextFieldStyle),
    );
  }
}
