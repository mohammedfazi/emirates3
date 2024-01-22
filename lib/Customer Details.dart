import 'package:emirates/CommonTextstyle.dart';
import 'package:emirates/Commonsize.dart';
import 'package:emirates/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'Commoncolor.dart';
import 'download ticket.dart';

class Customerdetails extends StatefulWidget {
  String from,to,price,time1,time2;
   Customerdetails({super.key,required this.price,required this.to,required this.from,required this.time1,required this.time2});

  @override
  State<Customerdetails> createState() => _CustomerdetailsState();
}

class _CustomerdetailsState extends State<Customerdetails> {


  final TextEditingController firstname=TextEditingController();
  final TextEditingController lastname=TextEditingController();
  final TextEditingController dob=TextEditingController();
  final TextEditingController mobile=TextEditingController();
  final TextEditingController email=TextEditingController();
  final TextEditingController passport=TextEditingController();
  final TextEditingController expirydate=TextEditingController();


  Future<void> handlePaymentErrorResponse(PaymentFailureResponse response)  async {
    showAlertDialog(context, "Payment Failed",
        "Code: ${response.code}\nDescription: ${response
            .message}\nMetadata:${response.error.toString()}");


  }

  void handlePaymentSuccessResponse(PaymentSuccessResponse response)async {
    // showAlertDialog(
    //     context, "Payment Successful", "Payment ID: ${response.paymentId}");
    // String message = "Dear"+"$firstname"+"\nYour Booking Has Been Confirmed and check your mail Thankyou for choosing Emirates.";
    // List<String> recipents = ["$mobile"];
    //
    // String _result = await sendSMS(message: message, recipients: recipents, sendDirect: true)
    //     .catchError((onError) {
    //   print(onError);
    //   print(message);
    // });
    // print(_result);
        Get.to( Downloadticket(
            firstname:firstname.text,lastname:lastname.text,dob:dob.text,
            mobile:mobile.text,email:email.text,passport:passport.text,expirydate:expirydate.text,from:widget.from,to:widget.to
        ));
  }

  void handleExternalWalletSelected(ExternalWalletResponse response) {
    showAlertDialog(
        context, "External Wallet Selected", "${response.walletName}");
  }

  void showAlertDialog(BuildContext context, String title, String message) {
    // set up the buttons
    Widget continueButton = ElevatedButton(
      child: const Text("Continue"),
      onPressed: () {},
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        leading: IconButton(onPressed: (){Get.back();},icon: const Icon(Icons.arrow_back,color: Colors.white,),),
        title: SizedBox(
            height: 40,
            width: 40,
            child: Image.asset("Assets/arabiclogo.png",color: white,)),
      ),
      body: Column(
        children: [
          SizedBox(
            height: displayHeight(context)*0.08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.from,style: bookttxtbold,),
                      Row(

                        children: [
                          Text(widget.time1,style:bookttxt1 ,),
                          const Text("|",style: TextStyle(color: Colors.grey),),
                          Text("Nov 14 2023",style:bookttxt1 ,),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton.small(
                    backgroundColor: primary,
                    onPressed: (){},child: const Icon(Icons.arrow_right_alt,color: white,),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.to,style: bookttxtbold,),
                      Row(
                        children: [
                          Text(widget.time2,style:bookttxt1 ,),
                          const Text("|",style: TextStyle(color: Colors.grey),),
                          Text("Nov 15 2023",style:bookttxt1 ,),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: displayHeight(context)*0.74,
            width: double.infinity,
            color: Colors.grey.shade50,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 20.0,right: 20.0),
                child: Container(
                  height: displayHeight(context)*1.10,
                  width: displayWidth(context)*0.40,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: primary,width: 1)
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: displayHeight(context)*0.05,
                        decoration: const BoxDecoration(
                          color: primary,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          )
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("1",style: appbartxt,),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.person,color: white,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Guest Details",style: appbartxt,),
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:12.0,bottom: 8.0,left: 12.0,right: 12.0),
                        child: Container(
                          height: displayHeight(context)*1.02,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey,width: 1)
                          ),
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Adult",style: bookttxtbold,),

                                      ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Text("Salutation",style: bookttxt1,),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Row(
                                   children: [

                                   ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: TextFormField(
                                   controller: firstname,
                                   cursorColor: Colors.black,
                                   style: bookttxt,
                                   validator: (firstname){
                                     if(firstname==null || firstname.isEmpty){
                                       return 'Enter the Required field';
                                     }
                                     else{
                                       return null;
                                     }

                                   },
                                   decoration: InputDecoration(
                                     labelText: "First or Given Name",
                                     labelStyle: bookttxt,
                                     focusedBorder: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(5),
                                       borderSide: const BorderSide(
                                         color: Colors.grey,
                                         width: 2
                                       )
                                     ),
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: const BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       )
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: TextFormField(
                                   controller: lastname,
                                   cursorColor: Colors.black,
                                   style: bookttxt,
                                   decoration: InputDecoration(
                                       labelText: "Last or Surname",
                                       labelStyle: bookttxt,
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: const BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       ),
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: const BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       )
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: TextFormField(
                                   controller: dob,
                                   keyboardType: TextInputType.number,
                                   cursorColor: Colors.black,
                                   style: bookttxt,
                                   decoration: InputDecoration(
                                       labelText: "DOB(DD/MM/YYYY)",
                                       labelStyle: bookttxt,
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: const BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       ),
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       )
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(15.0),
                                 child: IntlPhoneField(
                                   controller: mobile,
                                   style: bookttxt,
                                   cursorColor: Colors.white,
                                   keyboardType: TextInputType.number,
                                   decoration: InputDecoration(
                                       labelText: "Mobilenumber",
                                       labelStyle: bookttxt,
                                       focusedBorder:   OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(10),
                                           borderSide: const BorderSide(color: Colors.grey,width: 2)
                                       ),
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(10),
                                           borderSide: BorderSide(color: Colors.grey,width: 2)
                                       )

                                   ),
                                   initialCountryCode: 'IN',
                                   onChanged: (phone) {
                                     print(phone.completeNumber);
                                   },
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: TextFormField(
                                   controller: email,
                                   cursorColor: Colors.black,
                                   style: bookttxt,
                                   decoration: InputDecoration(
                                       labelText: "Email",
                                       labelStyle: bookttxt,
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: const BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       ),
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       )
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Text("Passport Details",style: bookttxtbold,),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: TextFormField(
                                   controller: passport,
                                   cursorColor: Colors.black,
                                   style: bookttxt,
                                   decoration: InputDecoration(
                                       labelText: "Passport Number",
                                       labelStyle: bookttxt,
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: const BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       ),
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: const BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       )
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: TextFormField(
                                   controller: expirydate,
                                   cursorColor: Colors.black,
                                   style: bookttxt,
                                   decoration: InputDecoration(
                                       labelText: "Expiry Date (DD/MM/YYYY)",
                                       labelStyle: bookttxt,
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: const BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       ),
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       )
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: TextFormField(
                                   cursorColor: Colors.black,
                                   style: bookttxt,
                                   decoration: InputDecoration(
                                       labelText: "Issuing Country",
                                       labelStyle: bookttxt,
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: const BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       ),
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: const BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       )
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: TextFormField(
                                   cursorColor: Colors.black,
                                   style: bookttxt,
                                   decoration: InputDecoration(
                                       labelText: "Country of Residence",
                                       labelStyle: bookttxt,
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: const BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       ),
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: const BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       )
                                   ),
                                 ),
                               ),

                             ],
                             ),
                          )
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: displayHeight(context)*0.07,
            child: Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text("Pay:",style: termstxt,),
                        Text(widget.price,style: termstxt,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: primary),
                          onPressed: (){
                          if(firstname.text.isEmpty){
                            StackDialog.show("Emirates", "Enter First Name to Proceed", Icons.person, Colors.red);
                          }
                          else if(lastname.text.isEmpty){
                            StackDialog.show("Emirates", "Enter Last Name to Proceed", Icons.person, Colors.red);
                          }
                          else if(dob.text.isEmpty){
                            StackDialog.show("Emirates", "Enter DOB to Proceed", Icons.person, Colors.red);
                          }
                          else if(email.text.isEmpty){
                            StackDialog.show("Emirates", "Enter Email to Proceed", Icons.email, Colors.red);
                          }
                          else if(passport.text.isEmpty){
                            StackDialog.show("Emirates", "Enter Passport Number to Proceed", Icons.add, Colors.red);
                          }
                          else if(expirydate.text.isEmpty){
                            StackDialog.show("Emirates", "Enter Expiry Date to Proceed", Icons.add, Colors.red);
                          }
                          else{
                            Razorpay razorpay = Razorpay();
                            var options = {
                              'key': 'rzp_test_dyWXp68zMMlasw',
                              'amount': widget.price,
                              'name': 'Emirates',
                              'description': '',
                              'retry': {'enabled': true, 'max_count': 1},
                              'send_sms_hash': true,
                              'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
                              'external': {
                                'wallets': ['paytm']
                              }
                            };
                            razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentErrorResponse);
                            razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccessResponse);
                            razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWalletSelected);
                            razorpay.open(options);
                          }


                          }, child: Text("Continue To Payment",style: appbartxt,)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
