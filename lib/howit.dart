import 'package:emirates/CommonTextstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'Commoncolor.dart';

class Works extends StatefulWidget {
  const Works({super.key});

  @override
  State<Works> createState() => _WorksState();
}

class _WorksState extends State<Works> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primary,
        leading: IconButton(onPressed: (){Get.back();},icon: const Icon(Icons.arrow_back,color: Colors.white,),),
        title: Text("How its Works",style: appbartxt,),
      ),
      body: Center(
        child: Image.asset("Assets/loader.gif"),
      ),
    );
  }
}
