import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Container(
              height: 500,
              width: double.infinity,
              color: Colors.pink.withOpacity(controller.opacity.value),
            ),
          ),
          Obx(
            () => Slider(
                value: controller.opacity.value,
                onChanged: (value) {
                  controller.getIncrement(value);
                }),
          )
        ],
      ),
    );
  }
}
