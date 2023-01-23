import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:leave_management_app/screens/leave/leave_calender_screen.dart';
import 'package:leave_management_app/widgets/leave/calender.dart';
import 'package:leave_management_app/widgets/leave/leave_form_heading.dart';

import '../../utils/app_layout.dart';
import '../../widgets/box_widget.dart';
import '../../widgets/column_label.dart';

class LeaveMainScreen extends StatelessWidget {
  const LeaveMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _departure = TextEditingController();
    TextEditingController _arrive = TextEditingController();

    return Column(
      children: [
        LeaveHeading(),
        Gap(AppLayout.getHeight(24)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BoxWidget(
              icon: Icon(
                Icons.sunny,
                color: Colors.yellow.shade600,
              ),
              label: "Annual",
            ),
            Gap(AppLayout.getWidth(8)),
            BoxWidget(
              icon: Icon(
                Icons.hail_outlined,
                color: Colors.black,
              ),
              label: "Parential",
            ),
          ],
        ),
        Gap(AppLayout.getHeight(4)),
        Row(
          children: [
            BoxWidget(
              icon: Icon(
                Icons.monetization_on,
                color: Colors.red.shade600,
              ),
              label: "Unpaid",
            ),
            Gap(AppLayout.getWidth(8)),
            BoxWidget(
              icon: Icon(
                Icons.star,
                color: Colors.blue.shade600,
              ),
              label: "Special",
            ),
          ],
        ),
        TextField(
          controller: _arrive,
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => Calender())),
          decoration: InputDecoration(
              label: Text("From"),
              floatingLabelStyle: TextStyle(color: Colors.amber)),
        ),
        Gap(AppLayout.getHeight(4)),
        TextField(
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => Calender())),
          controller: _departure,
          decoration: InputDecoration(label: Text("To")),
        ),
        Gap(AppLayout.getHeight(4)),
        const TextField(
          decoration: InputDecoration(
            label: Text("Annotation"),
          ),
        ),
        Gap(AppLayout.getHeight(32)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ColumnLabel(dayCount: 7, label: "Available"),

            //Gap(AppLayout.getWidth(24)),
            ColumnLabel(dayCount: 17, label: "All"),
            //Gap(AppLayout.getWidth(24)),
            ColumnLabel(
              dayCount: 20,
              label: "Used",
              isColorChange: true,
            ),
          ],
        ),
        Gap(AppLayout.getHeight(32)),
        InkWell(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(16)),
              color: Colors.red,
              gradient: LinearGradient(
                  colors: [Colors.amber.shade300, Colors.amber.shade900]),
            ),
            width: double.infinity,
            height: 48,
            child: Center(
              child: Text(
                "Confirm",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
