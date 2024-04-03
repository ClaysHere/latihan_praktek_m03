import 'package:flutter/material.dart';

class TextIcon extends StatelessWidget {
  TextIcon({super.key, required this.icon, required this.label});

  IconData icon;
  String label;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      TextSpan(
        children: [
          WidgetSpan(child: Icon(icon), alignment: PlaceholderAlignment.middle),
          WidgetSpan(
              child: SizedBox(
            width: 4,
          )),
          TextSpan(text: label)
        ],
      ),
    );
  }
}
