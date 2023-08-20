import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m3_app_viajes/utils/platform.util.dart';

showMessage({
  required String title,
  required String message,
  required BuildContext context,
}) {
  if (isMainPlatform()) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: Text(title),
          message: Text(message),
          cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cerrar'),
          ),
        );
      },
    );
  } else {
    showDialog(
      context: context,
      builder: (BuildContext c) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }
}
