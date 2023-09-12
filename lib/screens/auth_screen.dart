import 'package:electricity_facilities/screens/intro_page.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children:[
        IntroPage(),
        Container(color: Colors.red,),
        Container(color: Colors.yellowAccent),
        Container(color: Colors.blueAccent),])

    );
  }
}
