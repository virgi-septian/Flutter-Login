import 'package:get/get.dart';
import 'package:flutter/material.dart';

class UpdateStatusController extends GetxController {
  late TextEditingController statusC;

  @override
  void onInit() {
    statusC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    statusC.dispose();
    super.onClose();
  }
}
