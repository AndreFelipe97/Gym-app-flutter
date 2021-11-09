import 'package:flutter/material.dart';
import 'package:gym/components/button_login_social.dart';
import 'package:gym/pages/login/login_controller.dart';
import 'package:gym/pages/login/login_services.dart';
import 'package:gym/pages/login/login_state.dart';
import 'package:gym/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controller;

  @override
  void initState() {
    controller = LoginController(
        service: LoginServiceImplementation(),
        onUpdate: () async {
          if (controller.state is LoginStateSuccess) {
            final user = (controller.state as LoginStateSuccess).user;
            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.setString('userName', user.name!);
            prefs.setString('userPhotoUrl', user.photoUrl!);
            Navigator.pushReplacementNamed(context, "/home");
          } else {
            setState(() {});
          }
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: AppTheme.colors.background),
            height: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Container(
                        width: 236,
                        child: Column(children: [
                          Text(
                            "Mude a sua vida e sua saúde!",
                            style: AppTheme.textStyles.title,
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: ListTile(
              leading: Image.asset("assets/images/emoji.png"),
              title: Text(
                "Faça seu login com uma das contas abaixo",
                style: AppTheme.textStyles.button,
              ),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          if (controller.state is LoginStateLoading) ...[
            CircularProgressIndicator(),
          ] else if (controller.state is LoginStateFailure) ...[
            Text('Fail ${(controller.state as LoginStateFailure).message}')
          ] else
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: ButtonLoginSocial(
                  imagePath: "assets/images/google.png",
                  label: "Entrar com o Google",
                  onTap: () {
                    controller.googleSignIn();
                  },
                )),
          SizedBox(
            height: 12,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: ButtonLoginSocial(
                  imagePath: "assets/images/apple.png",
                  label: "Entrar com o Apple",
                  onTap: () {})),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
