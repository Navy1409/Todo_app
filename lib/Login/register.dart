import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/Utilis/colors.dart';
import 'package:todo_app/firebase_functions.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {

    final emailTextController = TextEditingController();
    final pswdTextController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor2,
        body: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.text2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                        height: 45.h,
                        child: Row(
                          children: [
                            Icon(Icons.mail_outline_sharp),
                            SizedBox(
                              width: 20.w,
                            ),
                            Container(
                              width: 250.w,
                              child: TextFormField(
                                controller: emailTextController,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "Enter e-mail"
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        height: 2,
                        thickness: 2,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                        height: 45.h,
                        child: Row(
                          children: [
                            Icon(Icons.password_sharp),
                            SizedBox(
                              width: 20.w,
                            ),
                            Container(
                              width: 250.w,
                              child: TextFormField(
                                controller: pswdTextController,
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "Enter Password"
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.bgColor1
                    ),
                    onPressed: (){
                      createUserWithEmailAndPassword(emailTextController.text, pswdTextController.text,context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 200.w,
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: AppColors.text1,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                    )
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "New User?  ",
                        style: TextStyle(
                            color: AppColors.text2,
                            fontSize: 17.sp
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: AppColors.text1,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
