import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:date_field/date_field.dart';
import 'package:emirates/CommonTextstyle.dart';
import 'package:emirates/Commoncolor.dart';
import 'package:emirates/Commonsize.dart';
import 'package:emirates/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Addflights extends StatefulWidget {
  const Addflights({super.key});

  @override
  State<Addflights> createState() => _AddflightsState();
}

class _AddflightsState extends State<Addflights>with TickerProviderStateMixin {
  late TabController _tabController;

  DateTime now=DateTime.now();
  var currentdate=DateFormat('yyyy-MM-dd');
  int index1=0,tab=0;
  bool seat=false;
  int container=0;
  List seats=[
    {
      'seatno':'1A'
    },
    {
      'seatno':'1B'
    },
    {
      'seatno':'1C'
    },
    {
      'seatno':'1A'
    },
    {
      'seatno':'1A'
    },
    {
      'seatno':'1A'
    },
    {
      'seatno':'1A'
    },
    {
      'seatno':'1A'
    },
    {
      'seatno':'1A'
    },
    {
      'seatno':'1A'
    },
    {
      'seatno':'1A'
    },
    {
      'seatno':'1A'
    },
    {
      'seatno':'1A'
    },
    {
      'seatno':'1A'
    },
    {
      'seatno':'1A'
    },
    {
      'seatno':'1A'
    },
    {
      'seatno':'1A'
    },
    {
      'seatno':'1A'
    }
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4,vsync: this);
    _tabController.animateTo(tab);
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){Get.back();},icon: Icon(Icons.arrow_back_ios,color: primary,),),
                  InkWell(
                    onTap: (){

                      Get.to(Profilescreen());
                    },

                    child: CircleAvatar(
                      radius: 30,
                      child: Image.asset("Assets/profile.png"),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Add Flights",style:boldtext ),
            ),
            Container(
              // height: 690,
              height: displayHeight(context) * 0.79,
              decoration: const BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50)
                )
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                container=0;
                              });

                            },
                            child: Container(
                              width: displayWidth(context)*0.15,
                              decoration:  BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: container==0?Colors.white:Colors.transparent,
                                    width: 2,
                                    

                                  )
                                )

                              ),
                              child: Text("Route",style: tabtxt,),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                container=1;
                              });

                            },
                            child: Container(
                              width: displayWidth(context)*0.15,
                              decoration:  BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                        color: container==1?Colors.white:Colors.transparent,
                                        width: 2,


                                      )
                                  )

                              ),
                              child: Text("Flight",style: tabtxt,),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                container=2;
                              });

                            },
                            child: Container(
                              width: displayWidth(context)*0.15,
                              decoration:  BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                        color: container==2?Colors.white:Colors.transparent,
                                        width: 2,


                                      )
                                  )

                              ),
                              child: Text("Seat",style: tabtxt,),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){
                              setState(() {

                                container=3;
                              });

                            },
                            child: Container(
                              width: displayWidth(context)*0.20,
                              decoration:  BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                        color: container==3?Colors.white:Colors.transparent,
                                        width: 2,


                                      )
                                  )

                              ),
                              child: Text("Checkout",style: tabtxt,),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  if(container==0)
                    route()
                  else if(container==1)
                    flight()
                  else if(container==2)
                    Seat()
                  else
                    Seat()


                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget route(){
    return Padding(
      padding:  const EdgeInsets.only(top:15.0),
      child: Column(
        children: [
          ToggleSwitch(
            minWidth: 120.0,
            minHeight: 50.0,
            initialLabelIndex: index1,
            activeBgColor: const [Colors.white],
            inactiveBgColor: primary,
            activeFgColor: primary,
            inactiveFgColor: Colors.white,
            totalSwitches: 3,
            dividerColor: Colors.white,
            labels: const ['One Way', 'Round Trip', 'Multiple'],
            onToggle: (index) {
              setState(() {
                if(index==0){
                  setState(() {
                    index1=0;
                  });
                }
                else if(index==1){
                  setState(() {
                    index1=1;
                  });
                }
                else{
                  setState(() {
                    index1=2;
                  });
                }
              });
            },
          ),
          if(index1==0)
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    style: logintxt,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.flight_takeoff_outlined,color: Colors.white,),
                        labelText: "FROM",
                        labelStyle: logintxt,
                        focusedBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        )

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    style: logintxt,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.flight_land,color: Colors.white,),
                        labelText: "TO",
                        labelStyle: logintxt,
                        focusedBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        )

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: DateTimeFormField(
                    dateTextStyle: logintxt,
                    decoration:  InputDecoration(
                        focusedBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white,width: 2)
                        ),
                      hintStyle:logintxt,
                      errorStyle: TextStyle(color: Colors.redAccent),
                      border: OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.event_note,color: white,),
                      labelText: 'Date',
                      labelStyle: logintxt
                    ),
                    mode: DateTimeFieldPickerMode.date,
                    firstDate: DateTime.now(),
                    autovalidateMode: AutovalidateMode.always,
                    validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                    onDateSelected: (DateTime value) {
                      print(value);
                    },
                  ),
                  // child: TextFormField(
                  //   style: logintxt,
                  //   cursorColor: Colors.white,
                  //   keyboardType: TextInputType.emailAddress,
                  //   decoration: InputDecoration(
                  //       prefixIcon: Icon(Icons.calendar_month,color: Colors.white,),
                  //       labelText: "DATE",
                  //       labelStyle: logintxt,
                  //       focusedBorder:   OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(10),
                  //           borderSide: BorderSide(color: Colors.white,width: 2)
                  //       ),
                  //       enabledBorder: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(10),
                  //           borderSide: BorderSide(color: Colors.white,width: 2)
                  //       )
                  //   ),
                  // ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    style: logintxt,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.group,color: Colors.white,),
                        labelText: "TRAVELLER",
                        labelStyle: logintxt,
                        focusedBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        )

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    style: logintxt,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.airline_seat_legroom_normal,color: Colors.white,),
                        labelText: "CLASS",
                        labelStyle: logintxt,
                        focusedBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        )

                    ),
                  ),
                ),

              ],
            )
          else if(index1==1)
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    style: logintxt,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.flight_takeoff_outlined,color: Colors.white,),
                        labelText: "FROM",
                        labelStyle: logintxt,
                        focusedBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        )

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    style: logintxt,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.flight_land,color: Colors.white,),
                        labelText: "TO",
                        labelStyle: logintxt,
                        focusedBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        )

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: DateTimeFormField(
                    dateTextStyle: logintxt,
                    decoration:  InputDecoration(
                        focusedBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        hintStyle:logintxt,
                        errorStyle: TextStyle(color: Colors.redAccent),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.event_note,color: white,),
                        labelText: 'FROM DATE',
                        labelStyle: logintxt
                    ),
                    mode: DateTimeFieldPickerMode.date,
                    firstDate: DateTime.now(),
                    autovalidateMode: AutovalidateMode.always,
                    validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                    onDateSelected: (DateTime value) {
                      print(value);
                    },
                  ),
                  // child: TextFormField(
                  //   style: logintxt,
                  //   cursorColor: Colors.white,
                  //   keyboardType: TextInputType.emailAddress,
                  //   decoration: InputDecoration(
                  //       prefixIcon: Icon(Icons.calendar_month,color: Colors.white,),
                  //       labelText: "DATE",
                  //       labelStyle: logintxt,
                  //       focusedBorder:   OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(10),
                  //           borderSide: BorderSide(color: Colors.white,width: 2)
                  //       ),
                  //       enabledBorder: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(10),
                  //           borderSide: BorderSide(color: Colors.white,width: 2)
                  //       )
                  //   ),
                  // ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: DateTimeFormField(
                    dateTextStyle: logintxt,
                    decoration:  InputDecoration(
                        focusedBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        hintStyle:logintxt,
                        errorStyle: TextStyle(color: Colors.redAccent),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.event_note,color: white,),
                        labelText: 'TO DATE',
                        labelStyle: logintxt
                    ),
                    mode: DateTimeFieldPickerMode.date,
                    firstDate: DateTime.now(),
                    autovalidateMode: AutovalidateMode.always,
                    validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                    onDateSelected: (DateTime value) {
                      print(value);
                    },
                  ),
                  // child: TextFormField(
                  //   style: logintxt,
                  //   cursorColor: Colors.white,
                  //   keyboardType: TextInputType.emailAddress,
                  //   decoration: InputDecoration(
                  //       prefixIcon: Icon(Icons.calendar_month,color: Colors.white,),
                  //       labelText: "DATE",
                  //       labelStyle: logintxt,
                  //       focusedBorder:   OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(10),
                  //           borderSide: BorderSide(color: Colors.white,width: 2)
                  //       ),
                  //       enabledBorder: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(10),
                  //           borderSide: BorderSide(color: Colors.white,width: 2)
                  //       )
                  //   ),
                  // ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    style: logintxt,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.group,color: Colors.white,),
                        labelText: "TRAVELLER",
                        labelStyle: logintxt,
                        focusedBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        )

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    style: logintxt,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.airline_seat_legroom_normal,color: Colors.white,),
                        labelText: "CLASS",
                        labelStyle: logintxt,
                        focusedBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        )

                    ),
                  ),
                ),
              ],
            )
          else
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    style: logintxt,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.flight_takeoff_outlined,color: Colors.white,),
                        labelText: "FROM",
                        labelStyle: logintxt,
                        focusedBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        )

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    style: logintxt,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.flight_land,color: Colors.white,),
                        labelText: "TO",
                        labelStyle: logintxt,
                        focusedBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white,width: 2)
                        )

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: DateTimeFormField(
                    dateTextStyle: logintxt,
                    decoration:  InputDecoration(
                        focusedBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        hintStyle:logintxt,
                        errorStyle: TextStyle(color: Colors.redAccent),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.event_note,color: white,),
                        labelText: 'FROM DATE',
                        labelStyle: logintxt
                    ),
                    mode: DateTimeFieldPickerMode.date,
                    firstDate: DateTime.now(),
                    autovalidateMode: AutovalidateMode.always,
                    validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                    onDateSelected: (DateTime value) {
                      print(value);
                    },
                  ),
                  // child: TextFormField(
                  //   style: logintxt,
                  //   cursorColor: Colors.white,
                  //   keyboardType: TextInputType.emailAddress,
                  //   decoration: InputDecoration(
                  //       prefixIcon: Icon(Icons.calendar_month,color: Colors.white,),
                  //       labelText: "DATE",
                  //       labelStyle: logintxt,
                  //       focusedBorder:   OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(10),
                  //           borderSide: BorderSide(color: Colors.white,width: 2)
                  //       ),
                  //       enabledBorder: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(10),
                  //           borderSide: BorderSide(color: Colors.white,width: 2)
                  //       )
                  //   ),
                  // ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: DateTimeFormField(
                    dateTextStyle: logintxt,
                    decoration:  InputDecoration(
                        focusedBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white,width: 2)
                        ),
                        hintStyle:logintxt,
                        errorStyle: const TextStyle(color: Colors.redAccent),
                        border: OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.event_note,color: white,),
                        labelText: 'TO DATE',
                        labelStyle: logintxt
                    ),
                    mode: DateTimeFieldPickerMode.date,
                    firstDate: DateTime.now(),
                    autovalidateMode: AutovalidateMode.always,
                    validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                    onDateSelected: (DateTime value) {
                      print(value);
                    },
                  ),
                  // child: TextFormField(
                  //   style: logintxt,
                  //   cursorColor: Colors.white,
                  //   keyboardType: TextInputType.emailAddress,
                  //   decoration: InputDecoration(
                  //       prefixIcon: Icon(Icons.calendar_month,color: Colors.white,),
                  //       labelText: "DATE",
                  //       labelStyle: logintxt,
                  //       focusedBorder:   OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(10),
                  //           borderSide: BorderSide(color: Colors.white,width: 2)
                  //       ),
                  //       enabledBorder: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(10),
                  //           borderSide: BorderSide(color: Colors.white,width: 2)
                  //       )
                  //   ),
                  // ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    style: logintxt,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.group,color: Colors.white,),
                        labelText: "TRAVELLER",
                        labelStyle: logintxt,
                        focusedBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        )

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    style: logintxt,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.airline_seat_legroom_normal,color: Colors.white,),
                        labelText: "CLASS",
                        labelStyle: logintxt,
                        focusedBorder:   OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        )

                    ),
                  ),
                ),
              ],
            )



        ],
      ),
    );
  }
  Widget Seat(){
    return  Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:15.0,left: 8.0,right: 8.0),
          child: Container(
            width: displayWidth(context)*0.54,
            height: displayHeight(context)*0.62,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(topLeft:Radius.circular(100),topRight: Radius.circular(100)),
              color: Colors.redAccent.shade200
            ),
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 60,
                        width: 60,
                        child: Image.asset("Assets/arabiclogo.png",color:white,)),
                  ),
                ),
                Center(child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                  child: Text("Emirates",style: logintxt,),
                )),
                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("$now",style: logintxt,),
                )),
                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Economy Class",style: loginbtn,),
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: SizedBox(
                      height: displayHeight(context)*0.40,
                      width: displayWidth(context)*0.50,
                      child: GridView.builder(
                          gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 30,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 30),
                          itemCount: seats.length,
                          itemBuilder: (BuildContext,context){
                        return InkWell(
                          onTap: (){
                            setState(() {
                              seat=!seat;
                            });
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: seat==true?Colors.white:Colors.transparent,
                              border:seat==true?Border.all(color:Colors.black): Border.all(color:white),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(
                              // child: Text(seats[index]['seatno']),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
           Padding(
             padding: const EdgeInsets.only(top:15.0,left: 8.0,right: 8.0),
              child: SizedBox(
                height: displayHeight(context)*0.67,
                 width: displayWidth(context)*0.35,
              child: Column(
                children: [
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("DXB",style: boldtext,),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("Dubai Intl Airport",style: logintxt,),
    ),
    const SizedBox(
    height: 35,
    ),
    const Icon(Icons.flight_takeoff,color: Colors.white,size: 50,),
    Text("3h 55m",style: logintxt,),
    const SizedBox(
    height: 35,
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("COK",style: boldtext,),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("Kochi Intl Airport",style: logintxt,),
    ),
    const SizedBox(
    height: 35,
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("FLIGHT NO",style: flightno,),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("EMI4122",style: logintxt,),
    ),
    const SizedBox(
    height: 35,
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("C4",style: boldtext,),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("SEAT NO",style: logintxt,),
    ),
    ],
    ),
    ),
    )
      ],
    );

  }
  Widget flight(){
    return Column(
      children: [
        SizedBox(
          height: displayHeight(context)*0.12,
          child: CalendarTimeline(
            initialDate: DateTime.now(),
            firstDate: DateTime(2023, 1, 1),
            lastDate: DateTime(2030, 12, 30),
            onDateSelected: (date) => print(date),
            leftMargin: 20,
            monthColor: Colors.blueGrey,
            dayColor: Colors.teal[200],
            activeDayColor: Colors.white,
            activeBackgroundDayColor: Colors.redAccent[100],
            dotsColor: Colors.transparent,
            selectableDayPredicate: (date) => date.day != 23,
            locale: 'en_ISO',
          )
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: SizedBox(
              height: displayHeight(context)*0.55,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder:(BuildContext context,int index){
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height:displayHeight(context)*0.30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white)
                    ),
                    child: Column(
                      children:  [
                        SizedBox(
                          height: displayHeight(context)*0.21,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("COK",style: boldtext2,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Kochi",style: logintxt,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("DATE",style: loginbtn2,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Nov 20 08:35PM",style: logintxt,),
                                    ),

                                  ],
                                ),

                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      backgroundColor: primary,
                                      radius: 32,
                                      child: Center(child: Icon(Icons.flight_takeoff,color: Colors.white,size: 30,)),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("DXB",style: boldtext2,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Dubai",style: logintxt,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("FLIGHT NO",style: loginbtn2,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("EMR231",style: logintxt,),
                                    ),

                                  ],
                                ),

                              ),

                            ],
                          ),
                        ),
                        const Divider(
                          color: white,
                        ),
                        Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.wallet,color: white,size: 40,),
                              Row(
                                children: [
                                  Text("TICKET PRICE ",style: flightno,),
                                  Text(" 170.00 AED",style: boldtext2,)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                );
              }),
            ),
          ),
        )
      ],
    );
  }
}
