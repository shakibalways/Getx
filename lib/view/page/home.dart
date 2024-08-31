import 'dart:math';

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
              child: Center(
                child: Text(
                  controller.index.toString(),
                  style: const TextStyle(fontSize: 35, color: Colors.black),
                ),
              ),
            ),
          ),
          Obx(
            () => Slider(
                value: controller.opacity.value,
                onChanged: (value) {
                  log(value);
                  controller.getIncrement(value);
                  log(value);
                }),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => controller.notifications.isTrue
                    ? const Text(
                        "Notifications",
                        style: TextStyle(color: Colors.deepOrange,fontSize: 35,fontWeight: FontWeight.bold),
                      )
                    : controller.notifications.isFalse
                        ? const Text(
                            "Notifications",
                            style: TextStyle(color: Colors.grey,fontSize: 35),
                          )
                        : const Text(
                            "Please On",
                            style: TextStyle(fontSize: 35),
                          ),
              ),
              Obx(
                () => Switch(
                    value: controller.notifications.value,
                    onChanged: (value) {
                      controller.getOnOff(value);
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
