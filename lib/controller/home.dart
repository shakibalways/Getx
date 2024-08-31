import 'package:get/get.dart';

class HomeController extends GetxController{


  RxDouble opacity = .4.obs;

  getIncrement(double value){

    opacity.value = value;

  }
}