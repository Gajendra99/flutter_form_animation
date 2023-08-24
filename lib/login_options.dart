import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_form_animation/signin_form.dart';
import 'package:flutter_form_animation/signup_form.dart';
import 'package:get/get.dart';

import 'style.dart';

class LoginOptions extends StatelessWidget {
  Style style = Style();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg4.gif'), fit: BoxFit.cover)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            width: Get.width,
            height: Get.height,
            color: Color.fromARGB(200, 255, 255, 255),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => _showAnimatedDialog(context, SigninForm()),
                    child: Text(
                      'Login',
                      style: style.txtStyle(txtColor: Colors.deepOrange),
                    ),
                    style: style.btnStyle(
                        btnColor: Colors.white, btnWidth: Get.width / 1.5),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'OR',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () => _showAnimatedDialog(context, SignupForm()),
                    child: Text(
                      'Create Account',
                      style: style.txtStyle(txtColor: Colors.white),
                    ),
                    style: style.btnStyle(
                        btnColor: Colors.deepOrange, btnWidth: Get.width / 1.5),
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  void _showAnimatedDialog(BuildContext context, var val) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            child: val,
          );
        });
  }
}
