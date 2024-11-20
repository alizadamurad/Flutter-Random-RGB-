import 'package:rgb_color/classes/rgb_color.dart';
import 'package:rgb_color/core/constants/app_const.dart';

extension DarkText on RgbColor {
  /// Getting background color's info
  bool get isBackgroundLight {
    final double r = red / 255;
    final double g = green / 255;
    final double b = blue / 255;

    final double luminance = (0.2126 * r) + (0.7152 * g) + (0.0722 * b);

    return luminance > AppConst.luminance;
  }
}
