import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ColumnLabel extends StatelessWidget {
  final String label;
  final int dayCount;
  final bool isColorChange;
  const ColumnLabel(
      {Key? key,
      required this.label,
      required this.dayCount,
      this.isColorChange = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label),
        Text(
          "${dayCount} Days",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: isColorChange ? Colors.amber.shade900 : Colors.black),
        ),
      ],
    );
  }
}
