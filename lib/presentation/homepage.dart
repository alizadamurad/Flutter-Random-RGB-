import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rgb_color/classes/rgb_color_creator.dart';
import 'package:rgb_color/controller/color_controller.dart';
import 'package:rgb_color/core/constants/app_const.dart';
import 'package:rgb_color/helper/isDark.dart';

/// Homepage
class Homepage extends StatelessWidget {
  /// Homepage
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorController colorController = Get.find<ColorController>();

    return GestureDetector(
      onTap: () => colorController.changeColor(RgbColorCreator().generate()),
      child: Scaffold(
        body: Obx(
          () {
            final color = colorController.currentColor.value;

            return AnimatedContainer(
              color: Color.fromRGBO(color.red, color.green, color.blue, 1),
              duration: const Duration(milliseconds: 500),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      AppConst.title,
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                color: color.isBackgroundLight
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "${colorController.colorCounter.value} times color changed",
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                color: color.isBackgroundLight
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "RGB(${color.red},${color.blue},${color.green})",
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                color: color.isBackgroundLight
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
