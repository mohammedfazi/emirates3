import 'package:emirates/CommonTextstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Commoncolor.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        leading: IconButton(onPressed: (){Get.back();},icon: Icon(Icons.arrow_back,color: Colors.white,),),
        title: Text("About Us"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.only(top:18.0),
                  child: SizedBox(
                    height: 170,
                    width: double.infinity,
                    child: FittedBox(
                      fit: BoxFit.cover,
                        child: Image.asset("Assets/banner.png")),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Leadership team",style: termstxt,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Almost all of the executives at the helm of the Emirates Group have been with the organisation since its birth. It's their pioneering vision that has given flight to the fastest growing airline in the world ‑ and the Middle East's largest provider of airport and travel services.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Chairman and Chief Executive, Emirates Airline & Group \n HH Sheikh Ahmed bin Saeed Al Maktoum began his aviation career in 1985, when he was appointed President of the Dubai Department of Civil Aviation. In the same year, he became Chairman of the newly founded Emirates, and helmed the launch of the airline with two leased aircraft to two destinations from Dubai. Today, he leads the Emirates Group, which includes dnata.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("President, Emirates Airline: \nSir Tim joined our airline’s founding team in 1985 as Head of Airline Planning, and became President in 2003. He’s been instrumental in the transformation of Emirates into the global giant it is today.Prior to Emirates, Sir Tim built his reputation as a talented route planner at Gulf Air, which had recruited him from Caledonian Airways. He had also held the position of Managing Director of Sri Lankan Airlines until 2008.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.only(top:50.0),
                child: SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: FittedBox(
                      fit: BoxFit.cover,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("Assets/banner1.png"))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:70.0,left: 10.0,right: 10.0,bottom: 10.0),
                child: Text("The milestones in Emirates’ incredible journey",style: termstxt,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Emirates is the world’s largest international airline, flying to 158 destinations in 85 countries. Emirates operates 269 aircraft and is the world’s largest operator of the Airbus A380 and Boeing 777 family of aircraft. The airline’s luxurious amenities, regionally inspired gourmet cuisine, award-winning in-flight entertainment system – ice – and unmatched hospitality provided by its iconic multi-lingual Cabin Crew from over 130 nationalities have made Emirates one of the world’s most recognized airline brands.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Emirates offers three travel classes:",style: termstxt,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("First Class:\n Passengers travelling on First class enjoy exceptional luxury and care on Emirates Airline. First class cabins are spacious. On board Emirates Airline Airbus A380 and Boeing 777, passengers enjoy enhanced comfort and privacy. Seats are wide and adjustable, so they recline to 180 degrees transforming into comfortable beds. Each passenger has his/her own suite equipped with a personal screen supported by AVOD entertainment system. Passengers can navigate more than 2500 channels featuring the latest movies, programs and games. Passengers are indulged with soft-skinned clothes, personal care accessories supplied from the famous Bulgari Company. Moreover, passengers are offered complimentary meals and beverages at the time of the traveler's wish. On the ground services include easy access to waiting lounges available at some international airports and check-in facilities.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Business Class:\n Emirates Business class feature a higher level of luxury compared with business class in many other airlines.The Business class passengers are privileged with similar features to the First class. Inflight services include comfortable, wide and adjustable seats. They recline to 180 degrees transforming into a comfortable flat beds. The entertainment system is modern and includes various genres of AVOD. Beauty and personal care accessories are provided.The passengers are offered complimentary and delicious meals and drinks to fulfill their culinary pleasures.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Economy Class:\n Economy Class on Emirates Airline is characterized by excellence and a sense of comfort observed in several details. Passengers are indulged in upscale travel experience. Seats are wide and comfortable. Wireless internet access and power charging sockets are available on selected models of aircraft. Passengers can enjoy watching AVOD entertainment system ICE and they are offered meals and drinks.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.only(top:50.0),
                child: SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: FittedBox(
                      fit: BoxFit.cover,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("Assets/banner2.png"))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:70.0,left: 10.0,right: 10.0,bottom: 10.0),
                child: Text("Providing the ‘world’s best in-flight experience’",style: termstxt,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("At Emirates, we’re committed to providing you with an unparalleled journey through our highly trained, professional cabin crew. New recruits undergo an intense seven and a half weeks of training in the highest standards of safety and service delivery in our state-of-the-art facility in Dubai.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("A cosmopolitan mix of young professionals from over 130 nationalities, our cabin crew speak over 70 languages and bring their diverse backgrounds to the skies – many were doctors, lawyers, artists or sports people in their previous lives.",style: termstxt1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("While our team provides award‑winning hospitality on board, we provide them with the health, wellness and beauty support they need while on the ground. Located in our Headquarters in Dubai, the Emirates Beauty Hub is a dedicated space for them to get advice from the experts on fitness, nutrition, hair, skincare and makeup.Many of our consultants were Emirates cabin crew themselves, and understand well the challenges our team face from day to day. Our consultants are trained by our Beauty Hub partner Christian Dior and have experience across a diverse range of ages, skin types and backgrounds.",style: termstxt1,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
