import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_app/game/view/HomeScreen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) => home(),
      },
    ),
  );
}
