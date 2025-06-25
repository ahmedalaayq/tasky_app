import 'package:flutter/material.dart';

extension TextCapitalizations on String {
  String capitalizeEachWord() {
    return split(' ')
        .map((word) => word[0].toUpperCase() + word.substring(1).toLowerCase())
        .join(' ');
  }
}
