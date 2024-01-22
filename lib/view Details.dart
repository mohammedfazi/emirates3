import 'package:emirates/CommonTextstyle.dart';
import 'package:emirates/Commonsize.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Commoncolor.dart';

class Details extends StatefulWidget {
  String from,to,flightno,starttime,endtime,duration;
   Details({super.key, required this.from,required this.to,required this.flightno,
     required this.starttime,required this.endtime,required this.duration});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(onPressed: (){Get.back();},icon:const Icon(Icons.arrow_back,color: Colors.black,),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.to,style: boldtext1,),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Text("from",style: termstxt2,),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Text(widget.from,style: termstxt2,),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 160,
                  decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(
                    child: Text("Friday,17 November",style: logintxt,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Icon(Icons.timelapse_outlined,color: Colors.black,),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Text(widget.duration,style: termstxt2,),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left:25.0),
                      child: Icon(Icons.directions_outlined,color: Colors.black,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Text("Direct",style: termstxt2,),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: displayHeight(context)*0.65,
                  decoration: BoxDecoration(
                   boxShadow:const [
                     BoxShadow(
                       color: Colors.grey,
                       blurRadius: 0.2,
                       spreadRadius: 0.1
                     )
                   ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:8.0,left: 8.0),
                                  child: Text("Emirates",style: termstxt2,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:8.0,left: 8.0),
                                  child: Text(widget.flightno,style: boardtxt,),
                                ),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 60,
                              width: 60,
                              child: Image.asset("Assets/arabiclogo.png"),
                            ),
                          ),

                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_circle_right,color: primary,),
                            Padding(
                              padding: const EdgeInsets.only(left:12.0),
                              child: Text(widget.starttime,style:termstxt2 ,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:15.0),
                              child: Text(widget.from,style:boardtxt ,),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Icon(Icons.timelapse_outlined,color: Colors.black,),
                            Padding(
                              padding: const EdgeInsets.only(left:15.0),
                              child: Text("4h",style:boardtxt ,),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.flight,color: Colors.black,),
                            Padding(
                              padding: EdgeInsets.only(left:8.0),
                              child: Text("( 777 widebody )"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.grid_view_rounded,color: Colors.black,),
                            Padding(
                              padding: EdgeInsets.only(left:8.0),
                              child: Text(" 3 - 4 -3 seat layout"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.airline_seat_legroom_extra_outlined,color: Colors.black,),
                            Padding(
                              padding: EdgeInsets.only(left:8.0),
                              child: Text(" 81 cm pitch"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.set_meal,color: Colors.black,),
                            Padding(
                              padding: EdgeInsets.only(left:8.0),
                              child: Text("Meals provided"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.wifi,color: Colors.black,),
                            Padding(
                              padding: EdgeInsets.only(left:8.0),
                              child: Text(" Basic web browsing (fee)"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.tv,color: Colors.black,),
                            Padding(
                              padding: EdgeInsets.only(left:8.0),
                              child: Text(" Seatback on demand & live TV"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.power,color: Colors.black,),
                            Padding(
                              padding: EdgeInsets.only(left:8.0),
                              child: Text(" Power & USB outlets"),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Icon(Icons.arrow_circle_right,color: primary,),
                            Padding(
                              padding: const EdgeInsets.only(left:12.0),
                              child: Text(widget.endtime,style:termstxt2 ,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:15.0),
                              child: Text(widget.to,style:boardtxt ,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
