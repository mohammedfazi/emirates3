import 'package:emirates/Aboutus.dart';
import 'package:emirates/Bookings.dart';
import 'package:emirates/CommonTextstyle.dart';
import 'package:emirates/Commoncolor.dart';
import 'package:emirates/Login.dart';
import 'package:emirates/Terms.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'howit.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:  Scaffold(
          backgroundColor: primary,
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                    IconButton(onPressed: (){logout();}, icon: Icon(Icons.logout,color: Colors.white,)),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: Text("My Profile",style: boldtext,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:50.0),
                  child: Container(
                    height: 650,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage("Assets/profile.png"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Container(
                            height: 500,
                            decoration: BoxDecoration(
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: primary,
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: ListTile(
                                      onTap: (){Get.to(Mybookings());},
                                      leading: Icon(Icons.flight_takeoff_outlined,color: Colors.white,),
                                      title: Text("My Bookings",style: loginbtn,),
                                      trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: primary,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: ListTile(
                                      onTap: (){Get.to(Works());},
                                      leading: const Icon(Icons.work_outlined,color: Colors.white,),
                                      title: Text("How it works",style: loginbtn,),
                                      trailing: IconButton(onPressed: (){},icon: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: primary,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: ListTile(
                                      onTap: (){ bottomshow();},
                                      leading: Icon(Icons.phone,color: Colors.white,),
                                      title: Text("Contact Us",style: loginbtn,),
                                      trailing: IconButton(onPressed: (){
                                       },icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: primary,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: ListTile(
                                      onTap: (){},
                                      leading: Icon(Icons.web,color: Colors.white,),
                                      title: Text("Web Check In",style: loginbtn,),
                                      trailing: IconButton(onPressed: (){
                                      },icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: primary,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: InkWell(
                                      onTap: (){Get.to(About());},
                                      child: ListTile(
                                        leading: const Icon(Icons.info_outline_rounded,color: Colors.white,),
                                        title: Text("About Us",style: loginbtn,),
                                        trailing: IconButton(onPressed: (){},icon: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: primary,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: InkWell(
                                      onTap: (){Get.to(const Terms());},
                                      child: ListTile(
                                        leading: const Icon(Icons.description,color: Colors.white,),
                                        title: Text("Terms & Conditions",style: loginbtn,),
                                        trailing: IconButton(onPressed: (){},icon: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: primary,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: ListTile(
                                      onTap: (){logout();},
                                      leading: const Icon(Icons.delete,color: Colors.white,),
                                      title: Text("Account Delete Request",style: loginbtn,),
                                      trailing: IconButton(onPressed: (){logout();},icon: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),),
                                    ),
                                  ),
                                )

                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        ));
  }
  Future bottomshow(){
    return showModalBottomSheet(context: context, builder: (BuildContext context){
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 230,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)
              ),
              color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Contact Us",style: boldtext,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Icon(Icons.mail,color: primary,),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text("mail@emiratesenquiry.net",style:termstxt ,),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Icon(Icons.phone_android,color: primary,),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text("+971511223340",style:phonetxt ,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text("(Toll Free)",style:termstxt ,),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.mail,color: primary,),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text("mail@emiratesenquiry.net",style:termstxt ,),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -90,
            left: 170,
            child: FloatingActionButton(
              backgroundColor: primary,
              onPressed: (){Get.back();},child: const Icon(Icons.close,color: Colors.white,),),
          )

        ],

      );
    });
  }

  Future logout(){
    return showDialog(context: context, builder: (BuildContext context){
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            height: 120,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Are you sure you want Exit this account",style: alerttxt,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){Get.back();}, child: Text("No",style:loginbtn1),
                    ),
                    TextButton(onPressed: ()async{
                      SharedPreferences sharedpref=await SharedPreferences.getInstance();
                      sharedpref.remove("login");
                      Get.to(const loginscreen());
                      },
                      child: Text("Yes",style:loginbtn1 ,),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }

  Future checkin(){
    return showModalBottomSheet(context: context, builder: (BuildContext context){
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                ),
                color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Online Check In",style: boldtext,),
                  ),

                ],
              ),
            ),
          ),
          Positioned(
            top: -90,
            left: 170,
            child: FloatingActionButton(
              backgroundColor: primary,
              onPressed: (){Get.back();},child: const Icon(Icons.close,color: Colors.white,),),
          )

        ],

      );
    });
  }
}
