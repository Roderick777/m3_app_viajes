import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m3_app_viajes/application/contants.dart';
import 'package:m3_app_viajes/utils/platform.util.dart';

class CustomScaffold extends StatefulWidget {
  const CustomScaffold({
    super.key,
    required this.child,
    required this.title,
    required this.mainAction,
  });
  final Widget child;
  final Widget title;
  final void Function() mainAction;

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    if (isMainPlatform()) {
      return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: widget.title,
          trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              widget.mainAction();
            },
            child: const Icon(CupertinoIcons.add),
          ),
        ),
        child: widget.child,
      );
    } else {
      return Scaffold(
        body: widget.child,
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          onPressed: () {
            widget.mainAction();
          },
          child: const Icon(Icons.add, color: Colors.white),
        ),
      );
    }
  }
}
