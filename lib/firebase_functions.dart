import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/Login/login.dart';
import 'package:todo_app/Utilis/colors.dart';
import 'package:todo_app/home.dart';
import 'package:firebase_database/firebase_database.dart';

FirebaseAuth auth= FirebaseAuth.instance;

createUserWithEmailAndPassword(String emailAddress, String password, BuildContext context) async {
  //ooooooooooooooo
  try {
    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );
    User? user= credential.user;
    if(user!=null){

      DatabaseReference userRef = FirebaseDatabase.instance.reference().child('user');
      String uid = credential.user!.uid;

      Navigator.push(
        context,
        MaterialPageRoute(
            builder:(context)=> Login()
        )
      );
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(
        "Successfully Registered",
        style: TextStyle(
          color: AppColors.text1
        ),
      ),
        backgroundColor: AppColors.bgColor1,
      )
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(
            "Weak Password",
            style: TextStyle(
                color: AppColors.text1
            ),
          ),
            backgroundColor: AppColors.bgColor1,
          )
      );
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(
            "E-mail already registered",
            style: TextStyle(
                color: AppColors.text1
            ),
          ),
            backgroundColor: AppColors.bgColor1,
          )
      );
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(
          "Something went wrong",
          style: TextStyle(
              color: AppColors.text1
          ),
        ),
          backgroundColor: AppColors.bgColor1,
        )
    );
  }
}

signInWithEmailAndPassword(String emailAddress, String password, BuildContext context) async{
  try {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password
    );
    User? user= credential.user;
    if(user!=null){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder:(context)=> Home()
          )
      );
    }

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(
          "Successfully Logged in",
          style: TextStyle(
              color: AppColors.text1
          ),
        ),
          backgroundColor: AppColors.bgColor1,
        )
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(
            "User not found",
            style: TextStyle(
                color: AppColors.text1
            ),
          ),
            backgroundColor: AppColors.bgColor1,
          )
      );
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(
            "Wrong Password",
            style: TextStyle(
                color: AppColors.text1
            ),
          ),
            backgroundColor: AppColors.bgColor1,
          )
      );
      print('Wrong password provided for that user.');
    }
  }
}