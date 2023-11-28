import 'package:flutter/material.dart';
import 'package:todo_app/Login/login.dart';
import 'package:todo_app/Utilis/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class OpenPage extends StatefulWidget {
  const OpenPage({super.key});

  @override
  State<OpenPage> createState() => _OpenPageState();
}

class _OpenPageState extends State<OpenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor2,
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        alignment: Alignment.center,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height/3.5,
            ),
            Container(
              height: 200.h,
              width: 300.w,
              child:  Lottie.asset("assets/animations/open_page.json")
            ),
            Text(
              "Lets Start Here",
              style: TextStyle(
                  color: AppColors.text1,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),

          ],
        )
      ),
      bottomNavigationBar: BottomAppBar(
        height: 200.h,
        elevation: 0,
        color: AppColors.bgColor2,
        child: Container(
          alignment: Alignment.bottomRight,
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext)=> Login()
                  )
              );
            },
            child: Container(
              width: 150.w,
              height: 150.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(100)),
                  color: AppColors.bgColor1
              ),
              child: Icon(Icons.arrow_forward, color: AppColors.text1, size: 50,)
            ),
          ),
        ),
      ),
    );
  }
}
