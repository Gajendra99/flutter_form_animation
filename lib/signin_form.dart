import 'package:flutter/material.dart';
import 'package:flutter_form_animation/input_field.dart';
import 'package:flutter_form_animation/style.dart';
import 'package:get/get.dart';

class SigninForm extends StatefulWidget {
  @override
  _SigninForm createState() => _SigninForm();
}

class _SigninForm extends State<SigninForm> {
  double _dialogHeight = 0.0;
  double _dialogWidth = Get.width;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 50), () {
      setState(() {
        _dialogHeight = Get.height / 2.9;
      });
    });
  }

  Widget build(BuildContext context) {
    Style style = Style();

    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      curve: Curves.easeInOut,
      height: _dialogHeight,
      width: _dialogWidth,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: Get.width,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Text(
              'Login',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InputField(
            title: 'Email',
            isSecured: false,
          ),
          InputField(
            title: 'Password',
            isSecured: true,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: style.btnStyle(
                    btnWidth: Get.width / 3,
                    btnColor: Color.fromARGB(255, 241, 241, 241)),
                onPressed: () async {
                  await Future.delayed(Duration(milliseconds: 50), () {
                    setState(() {
                      _dialogHeight = 0;
                    });
                  });
                  await Future.delayed(Duration(milliseconds: 450));
                  Get.back();
                },
                child: Text(
                  'Cancel',
                  style: style.txtStyle(txtColor: Colors.deepOrange),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  await Future.delayed(Duration(milliseconds: 50), () {
                    setState(() {
                      _dialogHeight = 0;
                    });
                  });
                  await Future.delayed(Duration(milliseconds: 450));
                  Get.back();
                },
                child: Text(
                  'Login',
                  style: style.txtStyle(txtColor: Colors.white),
                ),
                style: style.btnStyle(
                    btnWidth: Get.width / 3, btnColor: Colors.deepOrange),
              )
            ],
          )
        ],
      )),
    );
  }
}
