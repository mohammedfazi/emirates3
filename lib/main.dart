
import 'package:emirates/profile.dart';
import 'package:emirates/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Commoncolor.dart';


// const AndroidNotificationChannel channel=AndroidNotificationChannel(
//     'high', 'name',
//   importance: Importance.high,
//   playSound: true
// );
//
// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin=FlutterLocalNotificationsPlugin();
// Future<void> _firebaseMessageBackground(RemoteMessage message) async{
//   await Firebase.initializeApp();
//   print(message);
// }
 void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessageBackground);
  //
  // await flutterLocalNotificationsPlugin
  // .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.createNotificationChannel(channel);
  runApp(const MyApp());

  // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
  //   alert:true,
  //   badge: true,
  //   sound: true
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Emirates',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: white

      ),
      home: const Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
@override
void initState() {
  super.initState();

  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Splash()));
}
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    );
  }
}
