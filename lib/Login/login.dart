import 'package:flutter/material.dart';
import 'package:todo_app/Utilis/colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor2,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.text2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text("hii"),
                    Divider(
                      height: 2,
                      thickness: 2,
                    ),
                    Text("hii"),
                    Divider(
                      height: 2,
                      thickness: 2,
                    ),
                    Text("hii"),
                    Divider(
                      height: 2,
                      thickness: 2,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
