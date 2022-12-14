// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:medical_app/doctor_edit_page/widgets/botton_patient.dart';
import 'package:medical_app/doctor_edit_page/widgets/card_vaccine.dart';
import 'package:medical_app/utils/extensions/context_extension.dart';
import 'package:medical_app/utils/colors_const.dart';
import 'package:medical_app/utils/i18n.dart';

class DoctorEditPage extends StatelessWidget {
  const DoctorEditPage({Key? key}) : super(key: key);

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
                      padding:
                          const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      child: Text(
                        'You have 12 \nappointments today'.i18n,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 33,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 15, bottom: 60),
                      child: InkWell(
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 520,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                    color: ColorsConst.colorWhite),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 15,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Edit'.i18n,
                            style: const TextStyle(
                                fontSize: 14,
                                color: ColorsConst.colorLightBlue,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              context.pushNamed('homePage');
                            },
                            child: const Icon(
                              Icons.close,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const CardVaccine(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text(
                                'Doctor'.i18n,
                                style: const TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 0, top: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                        'images/2.jpg',
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Dr.Hanna Fiegel'.i18n,
                                            style: const TextStyle(
                                                fontSize: 19,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            'Theropist,virologist'.i18n,
                                            style: const TextStyle(
                                                color: ColorsConst.colorGray,                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.calendar_today,
                                      color: ColorsConst.colorLightBlue,
                                      size: 14,
                                    ),
                                    const SizedBox(width: 10),
                                    Text('September 22,2022'.i18n),
                                    const SizedBox(width: 15),
                                    const Icon(
                                      Icons.access_time_sharp,
                                      color: ColorsConst.colorBlue,
                                      size: 14,
                                    ),
                                    const SizedBox(width: 10),
                                    const Text('9:30'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Patient',
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 10,
                                        top: 10,
                                      ),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.grey[50],
                                            child: const Icon(Icons.person),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Column(
                                              children: const [
                                                Text(
                                                  'Stefania Keller',
                                                  style: TextStyle(
                                                      fontSize: 19,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  'Frist time in clinic',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const BottonPatient(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
