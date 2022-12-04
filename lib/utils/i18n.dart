import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t = Translations("en_us") +
      {
        "en_us": "You have 12 \nappointments today",
        "pt_br": "Você tem 12 \ncompromissos hoje",
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
      } +
      {
        "en_us": "Doctor",
        "pt_br": "Doutor(a)",
      } +
      {
        "en_us": "Theropist,virologist",
        "pt_br": "Terapeuta, virologista",
      } +
      {
        "en_us": "September 22,2022",
        "pt_br": "22 de setembro de 2022",
      } +
      {
        "en_us": "Edit",
        "pt_br": "Editar",
      } +
      {
        "en_us": "VACCINE",
        "pt_br": "VACINA",
      }+
      {
        "en_us": "DT(-GENERIC-) ST.112",
        "pt_br": "DT(-GENÉRICO-) ST.112",
      }+
      {
        "en_us": "Diphtheria",
        "pt_br": "Difteria",
      };

  String get i18n => localize(this, _t);
}