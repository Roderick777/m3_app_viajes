import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  const CircleButton({
    super.key,
    required this.child,
    required this.action,
    this.color = Colors.transparent,
    this.size = 40,
  });

  final Widget child;
  final Function action;
  final double size;
  final Color color;

  @override
  State<CircleButton> createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => widget.action(),
          child: Container(
            width: widget.size,
            height: widget.size,
            color: widget.color,
            child: Center(child: widget.child),
          ),
        ),
      ),
    );
  }
}
