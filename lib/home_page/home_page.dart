// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:medical_app/Home_Page/widgets/home_appbar.dart';
import 'package:medical_app/Home_Page/widgets/home_grid_items.dart';
import 'package:medical_app/home_page/widgets/home_bottom_navbar.dart';
import 'package:medical_app/utils/colors_const.dart';
import 'package:medical_app/utils/i18n.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 120,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      child: Text(
                        'You have 12 \nappointments today'.i18n,
                        style: const TextStyle(
                            color: ColorsConst.colorWhite,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 15, bottom: 60),
                      child: InkWell(
                        child: Icon(
                          Icons.more_vert,
                          color: ColorsConst.colorWhite,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              HomeAppBar(),
              const HomeGridItems(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const HomeBottomNavBar(),
    );
  }
}
