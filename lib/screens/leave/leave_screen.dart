import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:leave_management_app/screens/leave/leave_calender_screen.dart';
import 'package:leave_management_app/screens/leave/leave_main_screen.dart';
import 'package:leave_management_app/utils/app_layout.dart';
import 'package:leave_management_app/widgets/box_widget.dart';
import 'package:leave_management_app/widgets/column_label.dart';

class LeaveScreen extends StatefulWidget {
  const LeaveScreen({super.key});

  @override
  State<LeaveScreen> createState() => _LeaveScreenState();
}

class _LeaveScreenState extends State<LeaveScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.apps_sharp,
                color: Colors.white,
                size: 30,
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/images/user.jpeg"),
              ),
              Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      // backgroundColor: Colors.amber.shade300,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.amber.shade300,
            Color.fromARGB(255, 145, 70, 14)
          ]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            //Main Column
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(24),
                      ),
                    ),
                    width: double.infinity,
                    height: AppLayout.getHeight(670),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: AppLayout.getHeight(32.0),
                        left: AppLayout.getHeight(24.0),
                        right: AppLayout.getHeight(24.0),
                        bottom: AppLayout.getHeight(24.0),
                      ),
                      child: LeaveMainScreen(),
                      // child: LeaveCalenderScreen(),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
