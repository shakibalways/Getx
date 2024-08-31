import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class HomeController extends GetxController{

RxInt index = 0.obs;
  RxDouble opacity = .4.obs;


  getMultiple(){
    Timer.periodic(Duration(seconds: 1), (timer){
      index.value++;
    });
  }

  getIncrement(double value){

    opacity.value = value;

  }
  @override
  void onInit() {
   getMultiple();
    super.onInit();
  }
}