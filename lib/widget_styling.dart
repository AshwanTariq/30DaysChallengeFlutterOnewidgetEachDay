import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StyleSet {
  static Decoration getBoxDecoration(BuildContext context) {
    return BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).splashColor,
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(2, 3)),
        ]);
  }
}
