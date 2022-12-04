import 'package:flutter/material.dart';
import 'package:medical_app/calendar_page/calendar_page.dart';
import 'package:medical_app/doctor_edit_page/doctor_edit_page.dart';
import 'package:medical_app/drdoctor_page/drdoctor_page.dart';
import 'package:medical_app/home_page/home_page.dart';
import 'package:medical_app/login_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:medical_app/utils/colors_const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       // ignore: prefer_const_literals_to_create_immutables
       localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // ignore: prefer_const_literals_to_create_immutables
      supportedLocales: [
        const Locale('en', "US"),
        const Locale('pt', "BR"),
      ],
      title: 'Medical App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        cardColor: ColorsConst.cardColor,
      ),
      routes: {
        '/': (context) => I18n(child: const LoginPage()),
        'homePage': (context) => const HomePage(),
        'doctorEditPage': (context) => const DoctorEditPage(),
        'drdoctorPage': (context) => const DrDoctorPage(),
        'calendarPage':(context) => const CalendarPage(),
      },
    );
  }
}
