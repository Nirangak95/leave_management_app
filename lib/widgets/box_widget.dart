import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/app_layout.dart';

class BoxWidget extends StatefulWidget {
  final String label;
  final Icon icon;
  bool isColorChange;
  BoxWidget(
      {Key? key,
      required this.icon,
      required this.label,
      this.isColorChange = false})
      : super(key: key);

  @override
  State<BoxWidget> createState() => _BoxWidgetState();
}

class _BoxWidgetState extends State<BoxWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.isColorChange = true;

        setState(() {
          print("OnTapped => ${widget.isColorChange}");
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
          color: widget.isColorChange == true
              ? Colors.black
              : Colors.grey.shade300,
        ),
        width: AppLayout.getWidth(160),
        height: AppLayout.getHeight(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: widget.icon,
            ),
            Text(
              widget.label,
              style: TextStyle(
                  color: widget.isColorChange == true
                      ? Colors.white
                      : Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
