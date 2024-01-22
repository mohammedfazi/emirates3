import 'dart:async';
import 'package:emirates/Homesccreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class loader extends StatefulWidget {
  const loader({super.key});

  @override
  State<loader> createState() => _loaderState();
}

class _loaderState extends State<loader> {
  @override
  void initState(){
    super.initState();
    splash();
}

void splash()async {
    Timer(const Duration(seconds: 5),(){
      Get.to(const Homescreen());
    });

}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("Assets/loader.gif"),
      ),
    );
  }
}
