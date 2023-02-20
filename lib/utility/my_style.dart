import 'package:flutter/material.dart';

class MyStyle {
  Color dartColor = Colors.blue.shade900;
  Color primaryColor = Colors.green;
  SizedBox mysizedBox() => const SizedBox(
        width: 8.0,
        height: 16.0,
      );
  SizedBox showLogo() {
    return SizedBox(
      width: 120.0,
      child: Image.asset(
        'images/logo.jpg',
        fit: BoxFit.cover,
      ),
    );
  }

  Text showTitle(String title) => Text(
        title,
        style: TextStyle(
            fontSize: 24,
            color: Colors.blue.shade900,
            fontWeight: FontWeight.bold),
      );
       Text showSubTitle(String title) => Text(
        title,
        style: TextStyle(
            fontSize: 18,
            color: Colors.blue.shade900,
            fontWeight: FontWeight.bold),
      );
  MyStyle();
}
