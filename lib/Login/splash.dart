import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_app/Login/openPage.dart';
import 'package:todo_app/Utilis/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  
  Future<void> initialize() async{
    Timer(
      const Duration(seconds:5),
        (){
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (BuildContext) => OpenPage()
          )
        );
        }
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState(){
    super.initState();
    initialize();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor1,
      body:Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300.h,
              width: 300.w,
              child: Lottie.asset(
                "assets/animations/splash.json",
              ),
            ),
            Text(
              "TODO",
              style: TextStyle(
                color: AppColors.text1,
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
            )
          ],

        ),
      )
    );
  }
}
