import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lab10/services/auth_service.dart';

class myHome extends StatefulWidget {
  const myHome({super.key});

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body:
      Column(children: [
      ElevatedButton(onPressed: () {
        GoogleAuthService().signoutbygoogle();
      }, child: Text('Log out'))
      ],
      )

      ,
    );
  }
}