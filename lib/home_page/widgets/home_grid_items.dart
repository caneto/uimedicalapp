// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:medical_app/utils/extensions/context_extension.dart';
import 'package:medical_app/utils/colors_const.dart';
import 'package:medical_app/utils/i18n.dart';

class HomeGridItems extends StatelessWidget {
  const HomeGridItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.78,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        //   for (int i = 1; i < 5; i++)
        InkWell(
          onTap: () {
            context.pushNamed('doctorEditPage');
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
            decoration: BoxDecoration(
              color: ColorsConst.colorLightBlue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'VACCINE \nDT(GENERIC)'.i18n,
                  style: const TextStyle(
                      color: ColorsConst.colorWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  '9:30',
                  style: TextStyle(
                      color: ColorsConst.colorWhite,
                      fontSize: 33,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  'Dr.Hanna Fiegel'.i18n,
                  style: const TextStyle(
                      color: ColorsConst.colorWhite,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
          decoration: BoxDecoration(
            color: ColorsConst.colorWhite,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'VACCINE \nTDAP(ADACEL)'.i18n,
                style: const TextStyle(
                    color: ColorsConst.colorBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                '11:40',
                style: TextStyle(
                    color: ColorsConst.colorGray,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Dr.Orane'.i18n,
                style: const TextStyle(
                    color: ColorsConst.colorGray,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
          decoration: BoxDecoration(
            color: ColorsConst.colorWhite,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'VACCINE \nPSV23(PNEUMO)'.i18n,
                style: const TextStyle(
                    color: ColorsConst.colorBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                '12:15',
                style: TextStyle(
                    color: ColorsConst.colorGray,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Dr.Smith'.i18n,
                style: const TextStyle(
                    color: ColorsConst.colorGray,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
          decoration: BoxDecoration(
            color: ColorsConst.colorWhite,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'VACCINE \nRV1(ROTARIX)'.i18n,
                style: const TextStyle(
                    color: ColorsConst.colorBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                '12:45',
                style: TextStyle(
                    color: ColorsConst.colorGray,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Dr.Tempsni'.i18n,
                style: const TextStyle(
                    color: ColorsConst.colorGray,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
          decoration: BoxDecoration(
            color: ColorsConst.colorWhite,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'VACCINE \nHPV'.i18n,
                style: const TextStyle(
                    color: ColorsConst.colorBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                '12:15',
                style: TextStyle(
                    color: ColorsConst.colorGray,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Dr.Smith'.i18n,
                style: const TextStyle(
                    color: ColorsConst.colorGray,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
          decoration: BoxDecoration(
            color: ColorsConst.colorWhite,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'VACCINE \nCOVID 19 (Pfizer)'.i18n,
                style: const TextStyle(
                    color: ColorsConst.colorBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                '12:45',
                style: TextStyle(
                    color: ColorsConst.colorGray,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Dr.Tempsni'.i18n,
                style: const TextStyle(
                    color: ColorsConst.colorGray,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
