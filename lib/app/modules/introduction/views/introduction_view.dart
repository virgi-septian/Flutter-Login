import 'package:chatapp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Berinteraksi Dengan Mudah",
          body: "Welcome to the app! This is a description of how it works.",
          image: Container(
            width: Get.width * 0.6,
            height: Get.height * 0.6,
            child: Center(
              child: Lottie.asset("assets/lottie/main-laptop-duduk.json"),
            ),
          ),
        ),
        PageViewModel(
          title: "Berinteraksi Dengan Mudah",
          body: "Welcome to the app! This is a description of how it works.",
          image: Container(
            width: Get.width * 0.6,
            height: Get.height * 0.6,
            child: Center(
              child: Lottie.asset("assets/lottie/ojek.json"),
            ),
          ),
        ),
        PageViewModel(
          title: "lorem ipsum ...",
          body: "Welcome to the app! This is a description of how it works.",
          image: Container(
            width: Get.width * 0.6,
            height: Get.height * 0.6,
            child: Center(
              child: Lottie.asset("assets/lottie/payment.json"),
            ),
          ),
        ),
        PageViewModel(
          title: "Daftarkan dirimi bagian dari kami ..",
          body: "Welcome to the app! This is a description of how it works.",
          image: Container(
            width: Get.width * 0.6,
            height: Get.height * 0.6,
            child: Center(
              child: Lottie.asset("assets/lottie/register.json"),
            ),
          ),
        ),
      ],
      showSkipButton: true,
      skip: const Text(
        "Skip",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      next: const Text(
        "Next",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w700)),
      onDone: () => Get.toNamed(Routes.LOGIN),
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: Theme.of(context).colorScheme.secondary,
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
    ));
  }
}
