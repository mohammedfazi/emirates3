import 'package:emirates/CommonTextstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Commoncolor.dart';

class Terms extends StatefulWidget {
  const Terms({super.key});

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        leading: IconButton(onPressed: (){Get.back();},icon: Icon(Icons.arrow_back,color: Colors.white,),),
        title: Text("Terms & Conditions",style: appbartxt,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Agreement between you and Emirates",style: termstxt,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Thank you for visiting emirates.com . Please read these terms and conditions carefully before you start to use the Website. By accessing and using this Website, you indicate that you accept (unconditionally and irrevocably) these terms and conditions . If you do not agree to these terms and conditions, please refrain from using our Website and exit immediately.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("The Website is owned and operated by Emirates, whose principal office is at Emirates Group Headquarters Building, PO Box 686, Dubai, United Arab Emirates. Emirates is a Dubai corporation established by Decree No.2 of 1985 (as amended) of the Government of Dubai.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("You represent and warrant you possess the legal right and ability to enter into this Agreement and to use this Website in accordance with all terms and conditions herein.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("You promise to us you are old enough to enter legally binding contracts through this Website and you know you will be responsible for all payments due to us for bookings made by you or another person using your login information.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Entire agreement",style: termstxt,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("These terms and conditions and any other legal notices, policies and guidelines of Emirates linked to these terms and conditions constitute the entire agreement between you and Emirates relating to your use of this Website and supersede any prior understandings or agreements (whether oral or written), claims, representations, and understandings of the parties regarding such subject matter and the terms and conditions may not be amended or modified except by making such amendments or modifications available on this Website.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Indemnity",style: termstxt,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("As a condition of use of this Website, you agree to indemnify us from and against any and all liabilities, expenses (including legal fees) and damages arising out of claims resulting from your use of this Website, including without limitation any claims alleging facts that if true would constitute a breach by you of these terms and conditions.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Links to third-parties' websites",style: termstxt,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("This Website may contain links and pointers to Internet sites maintained by third parties. We do not operate or control in any respect any information, products or services on such third‑party sites. Third party links and pointers are included solely for your convenience, and do not constitute any endorsement by us. You assume sole responsibility for use of third party links and pointers.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Website bookings",style: termstxt,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("You may book tickets on the Website without registering. However, if you register with Emirates Skywards, you’ll be able to store your personal, travel, and credit card information in your profile, so there will be no need to re‑enter the information the next time you log in and book travel on the Website. If you are not already an Emirates Skywards member, you may register at www.emirates.com. We recommend you fill in your personal preferences as this information will assist us in providing you with our optimum service and will also save you time for future inquiries and bookings.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Please remember not to give your Login/ID, booking reference and/or password to anyone who is not a member of your immediate household. You may not give access to your account to any third party on‑line service, including, but not limited to any mileage tracking service, mileage management service or mileage aggregation service. You agree to accept responsibility for all activities that occur under your account. You should take all necessary steps to ensure that your password and/or booking reference is kept confidential and secure and should inform us immediately if you have any reason to believe that your password has become known to anyone else, or if the password is being, or is likely to be, used in an unauthorized manner.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("You can book on the Website for up to 9 passengers per booking. You may simultaneously book flights for 9 adults and children (2‑11 years old). Additionally, one infant (0‑1 year old) can be booked per adult passenger. You may book a flight in the class of your choice, First, Business or Economy Class (where available).",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Cancel your booking",style: termstxt,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("You are able to cancel your booking on the Website from the My Account section if you are logged in as an Emirates Skywards member. You will then be subject to the fare rules that you agreed to when you confirmed the booking. You are required to contact one of our offices to arrange for any refunds or request online for an electronic ticket refund.",style: termstxt1,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
