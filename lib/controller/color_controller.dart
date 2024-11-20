import 'package:get/get.dart';
import 'package:rgb_color/classes/rgb_color.dart';

/// Color controller for state management
class ColorController extends GetxController {
  /// Current default background color
  Rx<RgbColor> currentColor = Rx<RgbColor>(RgbColor(red: 0, green: 0, blue: 0));

  /// Color change counter
  RxInt colorCounter = RxInt(0);

  /// Color changing function
  void changeColor(RgbColor newRgbColor) {
    currentColor.value = newRgbColor;
    colorCounter.value++;
  }
}
