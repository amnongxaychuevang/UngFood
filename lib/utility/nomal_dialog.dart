// ignore_for_file: non_constant_identifier_names

import 'package:app/utility/my_style.dart';
import 'package:flutter/material.dart';

Future<void> normalDialog(context, String message) async => showDialog(
    context: context,
    builder: (context) => SimpleDialog(
          title: const Text('Show alert Dialog', textAlign: TextAlign.center),
          children: [
            Text(message,
                style: TextStyle(color: MyStyle().dartColor),
                textAlign: TextAlign.center),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'OK',
                  style: TextStyle(color: Colors.red),
                ))
          ],
        ));
