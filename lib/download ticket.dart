
import 'package:emirates/Commonsize.dart';
import 'package:emirates/Homesccreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'CommonTextstyle.dart';
import 'Commoncolor.dart';




class Downloadticket extends StatefulWidget {
  String firstname,lastname,dob,mobile,email,passport,expirydate,from,to;
   Downloadticket({super.key,
     required this.firstname,required this.lastname,
     required this.expirydate,required this.passport,required this.email,required this.mobile,required this.dob,
     required this.from,required this.to
   });



  @override
  State<Downloadticket> createState() => _DownloadticketState();
}

class _DownloadticketState extends State<Downloadticket> {

  // final _controller = ScreenshotController();
  //
  // Future<void> shareScreenshot() async {
  //   Directory? directory;
  //   if (Platform.isAndroid) {
  //     directory = await getExternalStorageDirectory();
  //   } else {
  //     directory = await getApplicationDocumentsDirectory();
  //   }
  //   final String localPath =
  //       '${directory!.path}/${DateTime.now().toIso8601String()}.png';
  //
  //   await _controller.captureAndSave(localPath);
  //
  //   await Future.delayed(Duration(seconds: 1));
  //
  //   await FlutterShare.shareFile(
  //       title: 'Compartilhar comprovante',
  //       filePath: localPath,
  //       fileType: 'image/png'
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
              onTap: (){Get.to(const Homescreen());},
              child: const Icon(Icons.arrow_back,color: Colors.black,)),
          actions: [
            Row(
              children: [
                IconButton(onPressed: (){
                  // shareScreenshot();
                  }, icon:const Icon(Icons.share,color: Colors.black) ,),],
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top:50.0,left: 8.0,right: 8.0),
          child: Container(
            height: displayHeight(context)*0.70,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black)
            ),
            child: Column(
              children: [
                SizedBox(
                  height: displayHeight(context)*0.10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height:50,
                                width: 50,
                                child: Image.asset("Assets/arabiclogo.png")),
                            Text("Emirates",style: termstxt1,)
                          ],
                        ),
                        Text(" E - Ticket Receipt & Itinerary",style:alerttxt ,),

                      ],
                    ),
                  ),
                ),
                const Divider(color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.only(left:4.0,right: 4.0,top: 2.0),
                  child: Container(
                    height: displayHeight(context)*0.05,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ref no:",style: tickettxt1,),
                              Text("EM00129863",style: tickettxt,)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Date of Booking:",style: tickettxt1,),
                              Text("20 November 2023",style: tickettxt,)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Status:",style: tickettxt1,),
                              Text("CONFIRMED",style: ticketcon,)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:4.0,right: 4.0,top: 2.0),
                  child: Container(
                    height: displayHeight(context)*0.26,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)
                    ),
                    child:Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("ONWARD",style: tickettxt1,),
                                      Text(widget.from,style: tickettxt,),
                                      const Icon(Icons.arrow_right_alt,color: Colors.black,),
                                      Text(widget.to,style: tickettxt,)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("20 Nov",style: tickettxt,),
                                      Text(" | ",style: tickettxt,),
                                      Text("Non stop",style: tickettxt,),
                                      Text(" | ",style: tickettxt,),
                                      Text("04 hrs 10 min",style: tickettxt,),


                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Airline Ref:",style: tickettxt1,),
                                    Text("EX1023",style: tickettxt,),

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const Divider(color: Colors.grey,),
                        Container(
                          height: displayHeight(context)*0.05,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Travel Class:",style: tickettxt1,),
                                    Text("Economy",style: tickettxt,)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Check-in-Baggage:",style: tickettxt1,),
                                    Text("30 kg",style: tickettxt,)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Cabin in Baggage",style: tickettxt1,),
                                    Text("Adult - 7kg",style: tickettxt,)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const Divider(color: Colors.grey,),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Flight\nNumber",style: tickettxt,),
                              Text("From",style: tickettxt,),
                              Text("Departure\nDate",style: tickettxt,),
                              Text("To",style: tickettxt,),
                              Text("Arrival\nDate",style: tickettxt,),
                              const SizedBox(width: 10,)
                            ],
                          ),
                        ),
                        const Divider(color: Colors.grey,),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("EIX233",style: tickettxt2,),
                              Text(widget.from,style: tickettxt2,),
                              Text("12:50\nWed,15 2023",style: tickettxt2,),
                              Text(widget.to,style: tickettxt2,),
                              Text("15:30\nWed,15 2023",style: tickettxt2,)
                            ],
                          ),
                        ),
                      ],
                    )
                  ),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Traveller(s) Information",style: tickettxt,),
                    )),
                Container(
                  height: displayHeight(context)*0.13,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Code",style: tickettxt,),
                            SizedBox(width: 20,),
                            Text("Name",style: tickettxt,),
                            const SizedBox(width: 40,),
                            Text("Ticket No",style: tickettxt,),
                            Text("Seat No",style: tickettxt,)
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 50,
                              width: 40,
                              child: Image.asset("Assets/barcode.png")),
                          Text(widget.firstname+widget.lastname,style: tickettxt,),
                          Text("Nil",style: tickettxt,),
                          Text("Nil",style: tickettxt,)
                        ],
                      ),

                    ],
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Total Price:",style: termstxt,),
                      Text("32500",style: termstxt,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 28.0),
          child: FloatingActionButton(
            backgroundColor: primary,
            onPressed: (){},
            child: const Icon(Icons.file_download,color: Colors.white),
          ),
        ),
      ),
    );
  }
}


