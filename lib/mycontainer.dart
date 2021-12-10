import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color renk;
  final Widget child;
  final Function()? onPressxx;

  MyContainer ({this.renk = Colors.white , required this.child, this.onPressxx = null}); //renk yazılmadıysa default rengi beyaz olsun demiş olduk.

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressxx,
      child: Container(
        child: child,
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: renk,
        ),
      ),
    );
  }
}