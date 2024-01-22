import 'dart:async';
import 'dart:ui';
import 'package:animate_do/animate_do.dart';
import 'package:emirates/Commoncolor.dart';
import 'package:emirates/Homesccreen.dart';
import 'package:emirates/Login.dart';
import 'package:emirates/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  static const String KEYLOGIN="login";

  @override
  void initState(){
    super.initState();
    local();
    splashfun();
    // FirebaseMessaging.onMessage.listen((RemoteMessage message){
    //   RemoteNotification? notification=message.notification;
    //   AndroidNotification? androidNotification=message.notification?.android;
    //   if(notification!=null&&androidNotification!=null){
    //     flutterLocalNotificationsPlugin.show(
    //       notification.hashCode,
    //       notification.title,
    //       notification.body,
    //       NotificationDetails(
    //         android: AndroidNotificationDetails(
    //           channel.id,
    //           channel.name,
    //           playSound: true,
    //           color: primary,
    //           icon: '@mipmap/ic_launcher'
    //         ),
    //       )
    //     );
    //   }
    //
    // });

  }

  void splashfun()async{
    var sharedpref=await SharedPreferences.getInstance();
    var isLoggedIn=sharedpref.getBool(KEYLOGIN);

    Timer(const Duration(seconds: 3),(){
      if(isLoggedIn!=null){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Homescreen()));
        }
        else{
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const loginscreen()));
        }


      // Get.to(const loginscreen());
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginscreen()));

    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:primary,
      body: Center(
        child: FadeIn(
          duration: const Duration(seconds: 5),
            child: Image.asset("Assets/logo.png")),

      ),
    );
  }

  void local() async{


  }
}
