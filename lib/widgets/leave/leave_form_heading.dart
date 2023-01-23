import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LeaveHeading extends StatelessWidget {
  const LeaveHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "New Request",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        InkWell(
          // onTap: () => print("you are tapped"),
          child: CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(
              Icons.close,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
      ],
    );
  }
}
