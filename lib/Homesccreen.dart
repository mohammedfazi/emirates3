import 'package:emirates/Addflight.dart';
import 'package:emirates/Boardingpass.dart';
import 'package:emirates/CommonTextstyle.dart';
import 'package:emirates/Commoncolor.dart';
import 'package:emirates/Commonsize.dart';
import 'package:emirates/Flightsdetails.dart';
import 'package:emirates/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  List<dynamic>data=[
    {
      "from":"DXB",
      "to":"AUS",
      "from1":"Dubai",
      "imgcount":"1",
      "time2":"10:55 PM",
      "image":"Assets/australia.png",
      "to1":"Australia",
      "flightno":"ER7634",
      "time":"11h55m",
      "time1":"11:35 AM",
      "price":"30500"
    },
    {
      "from":"DXB",
      "to":"COK",
      "imgcount":"2",
      "image":"Assets/kochi.png",
      "from1":"Dubai ",
      "to1":"Kochi",
      "flightno":"ER7114",
      "time":"05h55m",
      "time1":"12:55 PM",
      "time2":"05:00 PM",
    "price":"32500"
    },
    {
      "from":"DXB",
      "to":"USA",
      "imgcount":"3",
      "from1":"Dubai",
      "to1":"United State",
      "image":"Assets/usa.png",
      "flightno":"ER2134",
      "time":"11h55m",
      "time1":"01:35 PM",
      "time2":"12:15 PM",
      "price":"38500"
    },
    {
      "from":"DXB",
      "to":"AUS",
      "imgcount":"1",
      "image":"Assets/australia.png",
      "from1":"Dubai",
      "to1":"Australia",
      "flightno":"ER7634",
      "time":"11h55m",
      "time1":"11:35 AM",
      "time2":"10:25 PM",
      "price":"22500"
    },
    {
      "from":"DXB",
      "to":"MAA",
      "imgcount":"4",
      "image":"Assets/chennai.png",
      "from1":"Dubai",
      "to1":"Chennai",
      "flightno":"ER7634",
      "time":"4h55m",
      "time1":"04:55 AM",
      "time2":"08:00 PM",
      "price":"33500"
    },
    {
      "from":"DXB",
      "to":"TRV",
      "imgcount":"5",
      "image":"Assets/trivandrum.png",
      "from1":"Dubai",
      "to1":"Trivandrum",
      "flightno":"ER7634",
      "time":"3h55m",
      "time1":"11:35 AM",
      "time2":"03:25 PM",
      "price":"25500"
    },
    {
      "from":"DXB",
      "to":"CCJ",
      "imgcount":"6",
      "image":"Assets/calicut.png",
      "from1":"Dubai",
      "to1":"Kozhlikode",
      "flightno":"ER7634",
      "time":"4h00m",
      "time1":"02:00 AM",
      "time2":"06:00 AM",
      "price":"31500"
    },
    {
      "from":"DXB",
      "to":"USA",
      "imgcount":"3",
      "from1":"Dubai",
      "image":"Assets/usa.png",
      "to1":"United State",
      "flightno":"ER2134",
      "time":"11h55m",
      "time1":"01:35 PM",
      "time2":"12:25 PM",
      "price":"38500"
    },
    {
      "from":"DXB",
      "to":"AUS",
      "imgcount":"1",
      "image":"Assets/australia.png",
      "from1":"Dubai",
      "to1":"Australia",
      "flightno":"ER7634",
      "time":"11h55m",
      "time1":"11:35 AM",
      "time2":"10:55 PM",
      "price":"22500"
    },
    {
      "from":"DXB",
      "to":"MAA",
      "imgcount":"4",
      "from1":"Dubai",
      "image":"Assets/chennai.png",
      "to1":"Chennai",
      "flightno":"ER7634",
      "time":"4h00m",
      "time1":"08:00 AM",
      "time2":"12:00 PM",
      "price":"33500"
    },
    {
      "from":"DXB",
      "to":"TRV",
      "imgcount":"5",
      "from1":"Dubai",
      "image":"Assets/trivandrum.png",
      "to1":"Trivandrum",
      "flightno":"ER7634",
      "time":"3h55m",
      "time1":"08:00 PM",
      "time2":"11:55 PM",
      "price":"25500"
    },
    {
      "from":"DXB",
      "to":"CCJ",
      "image":"Assets/calicut.png",
      "imgcount":"6",
      "from1":"Dubai",
      "to1":"Kozhlikode",
      "flightno":"ER7634",
      "time":"04h00m",
      "time1":"12:00 PM",
      "time2":"04:00 AM",
      "price":"31500"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: Image.asset("Assets/arabiclogo.png"),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome Back!",style: loginbtn1,),
                    Text("Mohammed Fazil",style: loginbtn1,)
                  ],
                ),
              ),
              actions:  [
                InkWell(
                  onTap: (){Get.to(Profilescreen());},
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("Assets/profile.png"),

                  ),
                )
              ],


            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:20.0,top: 20.0),
              child: Text("My flights",style: boldtext,),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: SingleChildScrollView(
                    child: Container(
                      decoration:  const BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))
                      ),
                      // height: 660,
                      height: displayHeight(context)*0.79,
                      child: ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (BuildContext context,int index){
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: InkWell(
                            onTap: (){
                              Get.to(
                              Flightdetails(time:data[index]['time'],from:data[index]['from1'],
                                  to:data[index]['to1'],flightno:data[index]['flightno'],price:data[index]['price'],
                              image:data[index]['image'],starttime:data[index]['time2'],endtime:data[index]['time1'],)
                              // Boarding()
                              );
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.white,
                                    width: 1
                                  )
                                )
                              ),
                              height: 200,
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(data[index]['from'],style:hometxt),
                                        Text(data[index]['from1'],style:loginbtn),
                                        Text("Date",style:loginbtn2),
                                        Row(
                                          children: [
                                            Text(data[index]['from'],style:loginbtn),
                                            Text(data[index]['time1'],style:loginbtn),
                                          ],
                                        )


                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.flight_takeoff,color: Colors.white,),
                                        Text(data[index]['time'],style:loginbtn),

                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(data[index]['to'],style:hometxt),
                                        Text(data[index]['to1'],style:loginbtn),
                                        Text("FLIGHT NO",style:loginbtn2),
                                        Text(data[index]['flightno'],style:loginbtn),
                                      ],
                                    ),

                                  ],
                                ),

                              ),

                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                Positioned(
                  top: 630,
                  left: 320,
                  child: InkWell(
                    onTap: (){Get.to(const
                    Addflights()
                    );},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow:  const [
                          BoxShadow(
                            color: golden,
                            spreadRadius: 2.0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Center(
                        child: Icon(Icons.add,color:golden,size: 40,),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
