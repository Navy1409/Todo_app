import 'package:flutter/material.dart';
import 'package:todo_app/Login/splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Splash(),
        );
      }
    );
  }
}

