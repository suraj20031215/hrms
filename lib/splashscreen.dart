import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hrms/page/loginpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 1),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  LoginPage(),));
    }  );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Center(
           child: Image.asset('assets/images/img_19.png'),
        )
      ),
    );
  }
}
