import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_app/game/model/Home_Model.dart';

class Homecontroller extends GetxController {
  RxList<Homemodel> qalist = <Homemodel>[
    Homemodel(image: "🖤", index: 0, key: "black", ondrop: false),
    Homemodel(image: "💚", index: 1, key: "green", ondrop: false),
    Homemodel(image: "❤", index: 2, key: "red", ondrop: false),
    Homemodel(image: "💛", index: 3, key: "yellow", ondrop: false),
    Homemodel(image: "💙", index: 4, key: "blue", ondrop: false),
    Homemodel(image: "💜", index: 5, key: "purple", ondrop: false),
  ].obs;
  RxList<Homemodel> anlist = <Homemodel>[
    Homemodel(image: "💛", index: 3, key: "yellow", ondrop: false),
    Homemodel(image: "💜", index: 5, key: "purple", ondrop: false),
    Homemodel(image: "🖤", index: 0, key: "black", ondrop: false),
    Homemodel(image: "❤", index: 2, key: "red", ondrop: false),
    Homemodel(image: "💚", index: 1, key: "green", ondrop: false),
    Homemodel(image: "💙", index: 4, key: "blue", ondrop: false),
  ].obs;
}
