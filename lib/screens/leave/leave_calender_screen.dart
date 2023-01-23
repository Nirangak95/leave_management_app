import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

import '../../utils/app_layout.dart';
import '../../widgets/leave/leave_form_heading.dart';

class LeaveCalenderScreen extends StatelessWidget {
  const LeaveCalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: ScrollableCleanCalendar(
        calendarController: calendarController,
        layout: Layout.BEAUTY,
        calendarCrossAxisSpacing: 0,
      ),
    );
  }
}
