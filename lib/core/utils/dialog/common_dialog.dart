import 'dart:io';
import 'package:flutter/material.dart';

import '../error/error_response.dart';

class CommonDialog {
  CommonDialog();

  static Future<bool?> errorDialog(BuildContext context, ErrorResponse error) {
    return showDialog<bool>(
      context: context,
      builder: (_) {
        return AlertDialog(
          content: SizedBox(
            height: 70,
            child: Column(
              children: [Text('${error.message}'), Text('${error.code}')],
            ),
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text('다시 시도'),
            ),
            ElevatedButton(onPressed: () => exit(0), child: Text('종료')),
          ],
        );
      },
    );
  }
}
