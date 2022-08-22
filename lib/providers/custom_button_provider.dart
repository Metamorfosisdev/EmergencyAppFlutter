import 'package:flutter/material.dart';

class CustomButtonProvider extends ChangeNotifier {
  IconData? icon;
  String? text;
  Color? color1;
  Color? color2;

  Function onPressed = () {};
}
