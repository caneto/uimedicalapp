// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:medical_app/utils/colors_const.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        boxShadow: const [
          BoxShadow(
            blurRadius: 1,
            spreadRadius: 5,
            color: ColorsConst.colorWhite38,
          ),
        ],
        color: ColorsConst.colorLightBlue,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'homePage');
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 5,
                        color: ColorsConst.colorWhite,
                      ),
                    ],
                    color: ColorsConst.colorLightBlue),
                child: const Icon(
                  Icons.home,
                  color: ColorsConst.colorWhite,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(context, 'doctorEditPage');
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 5,
                          color: ColorsConst.colorWhite,
                        ),
                      ],
                      color: ColorsConst.colorLightBlue),
                  child: const Icon(
                    Icons.people_outline,
                    color: ColorsConst.colorWhite,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'calendarPage');
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 5,
                          color: ColorsConst.colorWhite,
                        ),
                      ],
                      color: ColorsConst.colorLightBlue),
                  child: const Icon(
                    Icons.domain_verification,
                    color: ColorsConst.colorWhite,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
