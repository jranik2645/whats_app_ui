
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whats_app/views/HomeView/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    super.initState();
     Timer(Duration(seconds: 3), () {
       Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => HomeView()));
     });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
           child:Image.asset('assets/images/logo.png',color: Colors.green,
              width: 100,
              height: 100,
           ),
        ),
    );
  }
}
