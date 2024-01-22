import 'package:emirates/CommonTextstyle.dart';
import 'package:emirates/Commonsize.dart';
import 'package:emirates/Customer%20Details.dart';
import 'package:emirates/download%20ticket.dart';
import 'package:emirates/view%20Details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'Commoncolor.dart';
class Flightdetails extends StatefulWidget {
  String time,from,to,flightno,price,image,starttime,endtime;
   Flightdetails({super.key,required this.time,required this.from,required this.to,required this.flightno,required this.starttime,required this.endtime,
     required this.price,required this.image});

  @override
  State<Flightdetails> createState() => _FlightdetailsState();
}

class _FlightdetailsState extends State<Flightdetails> {
  bool like = false;


  // int images=widget.imgcount as int;

  @override
  Widget build(BuildContext context) {

    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children:  [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: displayHeight(context)*0.22,
                  decoration: const BoxDecoration(
                  ),
                  child: Image.asset(widget.image,fit: BoxFit.fill,width: double.infinity,),
                  // child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back,color: white,)),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Row(
                  //             children: const [
                  //               Padding(
                  //                 padding: EdgeInsets.only(right:8.0),
                  //                 child: Icon(Icons.favorite_border,color: white,),
                  //               ),
                  //               Icon(Icons.share,color: white,),
                  //
                  //             ],
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: Text("Flight Details",style: boldtext2,),
                  //     )
                  //   ],
                  // ),

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   IconButton(onPressed: (){Get.back();}, icon:Icon(Icons.arrow_back,color: Colors.white,) ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){}, icon:Icon(Icons.favorite_border,color: Colors.white,) ),
                        IconButton(onPressed: (){}, icon:Icon(Icons.share,color: Colors.white,) )
                      ],
                    )
                  ],
                ),
                Positioned(
                    top: 140,
                    left: 10,
                    child: Text("Flight Details",style: boldtext12,)),


              ],

            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: displayHeight(context)*0.44,
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  surfaceTintColor: Colors.transparent,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom: 8.0,top: 12.0),
                          child: Text(widget.to,style: boldtext1,),
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
                              Text("1 traveller",style: boardtxt,),
                              Text(" . ",style: boardtxt,),
                              Text("One way",style: boardtxt,),
                              Text(" . ",style: boardtxt,),
                              Text("Economy class",style: boardtxt,),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top:8.0),
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(widget.from,style: boardtxt,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                                child: Text("to",style: boardtxt,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(widget.to,style: boardtxt,),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: Image.asset("Assets/arabiclogo.png")),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(widget.starttime,style:termstxt ,),
                                            Text(" - ",style:termstxt ,),
                                            Text(widget.endtime,style:termstxt ,),
                                          ],
                                        ),

                                        Text("Emirates",style:boardtxt ,)
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Direct",style:termstxt ,),
                                    Text(widget.time,style:boardtxt ,)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top:8.0),
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),

                        InkWell(
                          onTap: (){
                            Get.to(Details(from:widget.from,to:widget.to,flightno: widget.flightno,starttime:widget.starttime,endtime:widget.endtime,duration:widget.time));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text("View Details",style:phonetxt ,),
                                const Icon(Icons.arrow_forward_ios_rounded,color: Colors.blue,)
                              ],
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Price",style: boardtxt,),
                  Text(widget.price,style:alerttxt ,)
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: (){bottomshow();},
                    child: Text("Read before booking",style: boardtxt,)),
              ),
            ),
            SizedBox(
              height: 40,
              width: displayWidth(context)*0.90,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: primary,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )),
                onPressed: (){
                  Get.to( Customerdetails(from:widget.from,to:widget.to,price:widget.price,time1:widget.starttime,time2:widget.endtime));
    // Razorpay razorpay = Razorpay();
    // var options = {
    // 'key': 'rzp_test_dyWXp68zMMlasw',
    // 'amount': widget.price,
    // 'name': 'Emirates',
    // 'description': '',
    // 'retry': {'enabled': true, 'max_count': 1},
    // 'send_sms_hash': true,
    // 'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
    // 'external': {
    // 'wallets': ['paytm']
    // }
    // };
    // razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentErrorResponse);
    // razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccessResponse);
    // razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWalletSelected);
    // razorpay.open(options);
    },
                child: Text("Book flight tickets",style: logintxt,),
              ),
            )
          ],
        ),

      ),
    );
  }
  Future <void> bottomshow(){
    return showModalBottomSheet(context: context, builder: (BuildContext context){
      return Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 5,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),
          ),
          SizedBox(
            height: displayHeight(context)*0.50,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Read before booking",style: alerttxt,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Pricesalways include an estimate of all mandatory taxes and charges.Plaese check the all ticket details, final prices and terms and conditions on the website before you book",style: boardtxt,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Check for extra fees",style: alerttxt,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Some airlines and travel agencies charge extra for baggage,insurance or credit card use.They may also charge a service fee.",style: boardtxt,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Check terms for traveller aged 12-16",style: alerttxt,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Restriction may apply to young passengers travelling alone",style: boardtxt,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Check your cabin class",style: alerttxt,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Although sold as Economy.this itenerary may include some flights with a differnt cabin class.",style: boardtxt,),
                  ),

                ],
              ),
            ),
          )

        ],
      );
    });
  }

  }
