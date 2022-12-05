// ignore_for_file: file_names

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/calendar_page/widgets/calendar_card.dart';
import 'package:medical_app/calendar_page/widgets/calendar_card2.dart';
import 'package:medical_app/calendar_page/widgets/calendar_card3.dart';
import 'package:medical_app/home_page/widgets/home_bottom_navbar.dart';
import 'package:medical_app/utils/i18n.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Schedule'.i18n,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 1,
                                  color: Colors.white),
                            ],
                            color: Colors.lightBlue),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: DatePicker(
                        DateTime.now(),
                        selectionColor: Colors.white38,
                        selectedTextColor: Colors.white,
                        locale: "pt_BR",
                        initialSelectedDate: DateTime.now(),
                      ),
                    ),
                    const CalendarCard(),
                    const CalendarCard2(),
                    const CalendarCard3(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const HomeBottomNavBar(),
    );
  }
}
