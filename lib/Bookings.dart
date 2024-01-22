import 'package:emirates/CommonTextstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Commoncolor.dart';

class Mybookings extends StatefulWidget {
  const Mybookings({super.key});

  @override
  State<Mybookings> createState() => _MybookingsState();
}

class _MybookingsState extends State<Mybookings> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primary,
        leading: IconButton(onPressed: (){Get.back();},icon: Icon(Icons.arrow_back,color: Colors.white,),),
        title: Text("My Bookings",style: appbartxt,),
      ),
      body: Center(
        child: Image.asset("Assets/loader.gif"),
      ),
    );
  }
}
