import 'package:flutter/material.dart';

void featureNotAvailable({required BuildContext context, required String feature}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Message'),
        content: Text(
          '$feature is still under development',
          style: const TextStyle(fontSize: 14),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              'okay',
              style: TextStyle(fontSize: 14),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
