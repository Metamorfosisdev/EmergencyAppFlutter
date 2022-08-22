import 'package:flutter/material.dart';

class SizesProvider extends ChangeNotifier {
  double? _headerHeight;

  double? get headerHeight => _headerHeight;

  set headerHeight(double? value) {
    _headerHeight = value;
  }
}
