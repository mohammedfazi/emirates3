import 'package:dotted_line/dotted_line.dart';
import 'package:emirates/CommonTextstyle.dart';
import 'package:emirates/Commonsize.dart';
import 'package:emirates/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Commoncolor.dart';

class Boarding extends StatefulWidget {
  const Boarding({super.key});

  @override
  State<Boarding> createState() => _BoardingState();
}

class _BoardingState extends State<Boarding> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: primary,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){Get.back();},icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),),
                  InkWell(
                    onTap: (){Get.to(const Profilescreen());},
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage:AssetImage("Assets/profile.png")
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("DXB",style: boldtext,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("DUBAI",style:loginbtn ,),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.flight_takeoff_rounded,color: golden,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("4h35m",style: loginbtn,),
                      ),

                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("COK",style: boldtext,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("KOCHI",style:loginbtn ,),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                // height: 600,
                height: displayHeight(context)*0.68,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 240,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: SizedBox(
                                    height:60,
                                      width: 40,
                                      child: Image.asset("Assets/arabiclogo.png")),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Icon(Icons.flight_takeoff_rounded,color: golden,size: 40,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Total Price",style: boardtxt,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("\$ 170.00",style: boldtext1,),
                                )
                              ],
                            ),
                            SizedBox(
                              // width: 230,
                              width: displayWidth(context)*0.55,

                              child: Image.asset("Assets/worldmap.png"),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text("FLIGHT DATE",style: boardtxt,),
                                      Text("NOV 10",style: loginbtn1,)
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("GATE",style: boardtxt,),
                                      Text("B2",style: loginbtn1,)
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("FLIGHT NO",style: boardtxt,),
                                      Text("KB76",style: loginbtn1,)
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text("BOARDING TIME",style: boardtxt,),
                                      Text("08:35AM",style: loginbtn1,)
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("SEAT",style: boardtxt,),
                                      Text("19B",style: loginbtn1,)
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("CLASS",style: boardtxt,),
                                      Text("ECONOMY",style: loginbtn1,)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: const DottedLine(
                        ),
                      ),
                     SizedBox(
                       height: 170,
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text("Boarding Pass",style: boldtext,),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: SizedBox(
                                 height: 100,
                                 child: Image.asset("Assets/barcode.png")),
                           )
                         ],
                       ),
                     )
                    ],
                  ),
                ),
              ),
            )



          ],
        ),
      ),
    );
  }
}
