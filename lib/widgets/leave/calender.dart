import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

import '../../utils/app_layout.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime? selectedFirst;
  DateTime? selectedSecond;

  final calendarController = CleanCalendarController(
    minDate: DateTime.now(),
    maxDate: DateTime.now().add(const Duration(days: 365)),
    onRangeSelected: (firstDate, secondDate) {},
    onDayTapped: (date) {},
    // readOnly: true,
    onPreviousMinDateTapped: (date) {},
    onAfterMaxDateTapped: (date) {},
    weekdayStart: DateTime.monday,
    // initialFocusDate: DateTime(2023, 5),
    // initialDateSelected: DateTime(2022, 3, 15),
    // endDateSelected: DateTime(2022, 3, 20),
  );

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
                    height: AppLayout.getHeight(615),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: AppLayout.getHeight(32.0),
                        left: AppLayout.getHeight(24.0),
                        right: AppLayout.getHeight(24.0),
                        bottom: AppLayout.getHeight(24.0),
                      ),
                      child: ScrollableCleanCalendar(
                        calendarController: calendarController,
                        layout: Layout.BEAUTY,
                        calendarCrossAxisSpacing: 0,
                        daySelectedBackgroundColor:
                            Color.fromARGB(255, 196, 148, 6),
                        // dayBackgroundColor: Colors.amber,
                        daySelectedBackgroundColorBetween: Colors.grey.shade200,
                      ),
                      //
                    ),
                  ),
                  // Container(
                  //   height: AppLayout.getHeight(70),
                  //   decoration: BoxDecoration(
                  //     gradient:
                  //         LinearGradient(begin: Alignment.topCenter, colors: [
                  //       // Colors.amber.shade300,
                  //       Color.fromARGB(255, 145, 70, 14)
                  //     ]),
                  //   ),
                  //   child: Row(
                  //     children: [
                  //       InkWell(
                  //         child:
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getWidth(16)),
                      color: Colors.white,
                      gradient: LinearGradient(colors: [
                        Colors.amber.shade300,
                        Colors.amber.shade900
                      ]),
                    ),
                    width: double.infinity * .4,
                    height: 48,
                    child: Center(
                      child: Text(
                        "Select",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
