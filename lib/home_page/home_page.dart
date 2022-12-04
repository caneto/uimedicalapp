// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:medical_app/Home_Page/widgets/home_appbar.dart';
import 'package:medical_app/Home_Page/widgets/home_grid_items.dart';
import 'package:medical_app/home_page/widgets/home_bottom_navbar.dart';
import 'package:medical_app/utils/colors_const.dart';

extension Localization on String {
  static final _t = Translations("en_us") +
      {
        "en_us": "You have 12 \nappointments \ntoday",
        "pt_br": "Você tem 12 \ncompromissos \nhoje",
      } +
      {
        "en_us": "Password",
        "pt_br": "Senha",
      } +
      {
        "en_us": "Don't have an account?",
        "pt_br": "Não tem uma conta?",
      } +
      {"en_us": "Sign Up", "pt_br": "Inscrever-se"} +
      {
        "en_us": "Register Now",
        "pt_br": "Registrar agora",
      } +
      {
        "en_us": "Choose your operating system",
        "pt_br": "Escolha seu sistema operacional",
      } +
      {
        "en_us": "VACCINE \nDT(GENERIC)",
        "pt_br": "VACINA \nDT(GENÉRICA)",
      } +
      {
        "en_us": "Dr.Hanna Fiegel",
        "pt_br": "Dra. Hanna Fiegel",
      } +
      {"en_us": "VACCINE \nTDAP(ADACEL)", "pt_br": "VACINA \nTDAP(ADACEL)"} +
      {
        "en_us": "Dr.Orane",
        "pt_br": "Dra. Orane",
      } +
      {
        "en_us": "VACCINE \nPSV23(PNEUMO)",
        "pt_br": "VACINA \nPSV23(PNEUMONIA)",
      } +
      {
        "en_us": "Dr.Smith",
        "pt_br": "Dra. Smith",
      } +
      {
        "en_us": "VACCINE \nRV1(ROTARIX)",
        "pt_br": "VACINA \nRV1(ROTARIX)",
      } +
      {
        "en_us": "Dr.Tempsni",
        "pt_br": "Dra. Tempsni",
      }+
      {
        "en_us": "VACCINE \nHPV",
        "pt_br": "VACINA \nHPV",
      } +
      {
        "en_us": "Dr.Tempsni",
        "pt_br": "Dra. Tempsni",
      }+
      {
        "en_us": "VACCINE \nCOVID 19 (Pfizer)",
        "pt_br": "VACINA \nCOVID 19 (Pfizer",
      } +
      {
        "en_us": "Dr.Tempsni",
        "pt_br": "Dra. Tempsni",
      };

  String get i18n => localize(this, _t);
}

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
