// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:medical_app/drdoctor_page/widgets/vaccine_dt.dart';
import 'package:medical_app/drdoctor_page/widgets/vaccine_psv23.dart';
import 'package:medical_app/drdoctor_page/widgets/vaccine_rv1.dart';

import 'package:medical_app/drdoctor_page/widgets/vaccine_tdap.dart';

class ListVaccine extends StatelessWidget {
  const ListVaccine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        VaccineTDAP(),
        VaccineDT(),
        VaccinePSV23(),
        VaccineRV1(),
      ],
    );
  }
}
