import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class HomeController extends GetxController {
  RxInt index = 0.obs;
  RxDouble opacity = .4.obs;
  RxBool notifications = false.obs;

  getMultiple() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (notifications.isTrue ) {
        index.value++;
      } else if(notifications.isFalse) {
        const Text("Please Switch On");
      }
    });
  }

  getIncrement(double value) {
    opacity.value = value;
  }

  getOnOff(bool value) {
    notifications.value = value;
  }

  @override
  void onInit() {
    getMultiple();
    getOnOff;
    super.onInit();
  }
}
