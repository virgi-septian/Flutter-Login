import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../controllers/login_controller.dart';
import 'package:chatapp/app/controllers/authentication_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);
  final authC = Get.find<AuthenticationController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: Get.height * 0.7,
                width: Get.width * 0.7,
                child: Lottie.asset('assets/lottie/login.json'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () => authC.login(),
                child: Container(
                  width: 180,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        padding: EdgeInsets.only(right: 10),
                        width: 40,
                        child: Image.asset('assets/logo/google.png'),
                      ),
                      Text('Sign In With Google'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
