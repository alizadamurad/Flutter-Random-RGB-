import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rgb_color/controller/color_controller.dart';
import 'package:rgb_color/presentation/homepage.dart';

void main() {
  Get.put(ColorController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RGB Color',
      home: Homepage(),
    );
  }
}
