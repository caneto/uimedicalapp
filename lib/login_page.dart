import 'package:flutter/material.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:medical_app/utils/colors_const.dart';

extension Localization on String {
    static final _t = Translations("en_us") +
      {
        "en_us": "Email Address",
        "pt_br": "Endereço de Email",
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

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: ColorsConst.backgroundColor,
    body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/login.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(140),
                    left: Radius.circular(0),
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email Address'.i18n,
                  labelStyle: const TextStyle(color: Colors.white),
                  icon: const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Icon(
                      Icons.alternate_email_sharp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Password'.i18n,
                  labelStyle: const TextStyle(color: Colors.white),
                  icon: const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'homePage');
              },
              child: Container(
                height: 40,
                margin:
                    const EdgeInsets.symmetric(horizontal: 65, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorsConst.color_blue,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 4,
                      color: Colors.white,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Sign Up'.i18n,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Don't have an account?".i18n,
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Register Now'.i18n,
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
            ),
            const SizedBox(height: 50),
            Text(
              'Choose your operating system'.i18n,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('images/play.jpg'),
                ),
                SizedBox(
                   width: 6,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/android.jpg'),
                ),
                SizedBox(
                   width: 6,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/apple.jpg'),
                ),
              ],
            )
          ],
        ),
      ),
    ),
    );
  }
}
