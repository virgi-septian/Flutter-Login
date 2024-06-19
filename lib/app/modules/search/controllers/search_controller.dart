import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchFriendController extends GetxController {
  late TextEditingController searC;

  @override
  void onInit() {
    // TODO: implement onInit
    searC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    searC.dispose();
  }
}
