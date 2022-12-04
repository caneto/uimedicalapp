// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:medical_app/utils/colors_const.dart';
import 'package:medical_app/utils/i18n.dart';

class CardVaccine extends StatelessWidget {
  const CardVaccine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorsConst.colorLightBlue,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'VACCINE'.i18n,
              style: const TextStyle(color: ColorsConst.colorWhite54),
            ),
            const SizedBox(height: 5),
            Text(
              'DT(-GENERIC-) ST.112'.i18n,
              style: const TextStyle(
                color: ColorsConst.colorWhite,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'Diphtheria'.i18n,
              style: const TextStyle(
                color: ColorsConst.colorWhite,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
