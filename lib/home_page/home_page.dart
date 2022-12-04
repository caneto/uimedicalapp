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
      } + { 
         "en_us": "Password",
        "pt_br": "Senha",
      } + {
        "en_us": "Don't have an account?",
        "pt_br": "Não tem uma conta?",
      } + {
        "en_us": "Sign Up",
        "pt_br": "Inscrever-se"
      } + {
        "en_us": "Register Now",
        "pt_br": "Registrar agora",
      } + {  
        "en_us": "Choose your operating system",
        "pt_br": "Escolha seu sistema operacional",
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
                height: 150,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      child: Text(
                        'You have 12 \nappointments \ntoday'.i18n,
                        style: const TextStyle(
                            color: Colors.white,
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
                          color: Colors.white,
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
