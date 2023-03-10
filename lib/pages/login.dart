import 'package:auth_buttons/auth_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lab10/services/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In")
        ,
        ),
      body: Center(
        child: GoogleAuthButton(
          onPressed: () {
            GoogleAuthService().signinbygoogle().then((userCredential){
              if (userCredential==uid) {
                navigate
              }
            });
            print(UserCredential);
          },
          style: AuthButtonStyle(
            buttonType: AuthButtonType.secondary,
            iconType: AuthIconType.secondary
          ),
        ),
      ),
    );
  }
}