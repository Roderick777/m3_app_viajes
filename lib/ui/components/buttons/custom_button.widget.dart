import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m3_app_viajes/utils/platform.util.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key, required this.content});
  final Widget content;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    if (isMainPlatform()) {
      return CupertinoButton(
        onPressed: () {},
        child: widget.content,
      );
    } else {
      return ElevatedButton(
        onPressed: () {},
        child: widget.content,
      );
    }
  }
}
