import 'dart:math' show Random;

import 'package:rgb_color/classes/rgb_color.dart';
import 'package:rgb_color/core/constants/app_const.dart';

/// Class for random color creation
class RgbColorCreator {
  final _random = Random();

  /// Generating random RGB color
  RgbColor generate() {
    return RgbColor(
      red: _random.nextInt(AppConst.rgb),
      green: _random.nextInt(AppConst.rgb),
      blue: _random.nextInt(AppConst.rgb),
    );
  }
}
