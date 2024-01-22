import 'dart:convert';
import 'package:emirates/CommonTextstyle.dart';
import 'package:emirates/Commonsize.dart';
import 'package:emirates/Homesccreen.dart';
import 'package:emirates/signin.dart';
import 'package:emirates/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Commoncolor.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  bool toogle=false;
  final TextEditingController username=TextEditingController();
  final TextEditingController username1=TextEditingController();
  final TextEditingController password=TextEditingController();
  final _formKey = GlobalKey<FormState>();
   int pageindex=1;
   String user="";
  Codec<String, String> stringToBase64Url = utf8.fuse(base64Url);

  // final bool emailValid =
  // RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
  //     .hasMatch(email);
  //

  @override
 void initState(){
   super.initState();
   // loginapi();
  }

//   Future <void> loginapi() async{
//     String user=username.text;
//     String pass=password.text;
//
//     String _baseurl="http://213.136.72.226:5047/FPC15S3/";
//
//     final url=Uri.parse(_baseurl);
//
// final headers={
//   "Accept":"Application/json",
//   "Content-Type":"Application/json"
// };
//     final json = '{"data": {"p6": "$user","p7": "$pass","p13": "CONSUMER"}}';
//
//    final responce=await http.post(url,headers: headers,body: json.toString());
//
//   final value=jsonDecode(responce.body);
//
//   if(responce.statusCode==200){
// if(value['Output']['data']);
// Get.to(Homescreen());
//   }
//   else{
//     return null;
//   }
//
//   }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: primary,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:80.0),
              child: Center(
                child: SizedBox(
                  height: 200,
                  child: Image.asset("Assets/logo.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                controller: username,
                style: logintxt,
                cursorColor: Colors.white,
                keyboardType: TextInputType.emailAddress,
                validator: (email){
                  if(email==null||email.isEmpty){
                    StackDialog.show("Emirates", "Please enter Username to Proceed", Icons.person, Colors.red);
                  }
                  else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  labelText: "Enter Email ID",
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
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                controller: password,
                obscureText:toogle?true:false,
                style: logintxt,
                cursorColor: Colors.white,
                onTap: (){
                  setState(() {
                    toogle=!toogle;
                  });
                },
                validator: (pass){
                  if(pass==null||pass.isEmpty){
                    StackDialog.show("Emirates", "Please enter Password to Proceed", Icons.password, Colors.red);
                  }
                  else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                    labelText: "Enter Password",
                    labelStyle: logintxt,
                    suffixIcon: Icon(toogle?Icons.remove_red_eye_rounded:Icons.visibility_off,color: Colors.white,),
                    focusedBorder: OutlineInputBorder(
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
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: TextButton(onPressed: (){forgetpassword();},child: Text("Forget Password?",style: loginbtn,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white,shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )),
                    onPressed: (
                        )async{

                      var sharedpref=await SharedPreferences.getInstance();
                      sharedpref.setBool('login', true);

                      if(username.text.isEmpty){
                        StackDialog.show("Emirates", "Please Enter Email to Proceed", Icons.email, Colors.red);
                      }
                      else if(password.text.isEmpty){
                        StackDialog.show("Emirates", "Please Enter Password to Proceed", Icons.password, Colors.red);
                      }
                      else{
                        StackDialog.show("Emirates", "Login Sucessfully into Emitates", Icons.flight_takeoff, Colors.red);
                        Get.to(Homescreen());
                      }

                      // loginapi();
                      //   if (_formKey.currentState!.validate()) {
                      //    Get.to(const Homescreen());
                      //   StackDialog.show("Emirates", "Login Sucessfully into Emitates", Icons.flight_takeoff, Colors.red);
                      //   }
                      //   else{
                      //     Get.to(const loginscreen());
                      //   }
                      }, child: Center(child: Text("Log in",style: loginbtn1,))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(onPressed: (){Get.to(const Signin());},child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Not a member?",style: loginbtn,),
                  Text("Join now",style: loginbtn2,),
                ],
              ),),
            ),

          ],
        ),
      ),
    );
  }
  Future <void> forgetpassword(){
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        )
      ),
        context: context, builder: (BuildContext context){
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -90,
                left: 50,
                right: 50,
                child: FloatingActionButton(
                  backgroundColor: primary,
                  onPressed: (){Get.back();},
                  child: const Icon(Icons.close,color: Colors.white,),),
              ),
              SizedBox(
                height: displayHeight(context)*0.35,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top:30.0),
                  child:pageindex==1?
                      button1():
                      button2()
                ),

              ),
            ],
          );
    });
  }
  Widget button1(){
    return SizedBox(
      height: displayHeight(context)*0.30,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top:30.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Please Enter your Email Id or Mobile Number to Change Password",style: loginbtn1,),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                controller: username1,
                style: loginbtn1,
                cursorColor: Colors.white,
                keyboardType: TextInputType.emailAddress,
                validator: (email){
                  if(email==null||email.isEmpty){
                    StackDialog.show("Emirates", "Please enter Username to Proceed", Icons.person, Colors.red);
                  }
                  else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                    labelText: "Enter Email ID",
                    labelStyle: loginbtn1,
                    focusedBorder:   OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: primary,width: 2)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: primary,width: 2)
                    )

                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: SizedBox(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(backgroundColor: primary),
                        child: Center(child: Text("Next",style: logintxt,)))),
              ),
            )
          ],
        ),
      ),

    );

  }

  Widget button2(){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("Please Enter your OTP number for Verification !",style: loginbtn1,),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: OTPTextField(
            length: 6,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 50,
            style:loginbtn1,
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.box,
            onCompleted: (pin) {
              print("Completed: " + pin);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text("Resend Code :",style: boardtxt,),

            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0,top: 20.0),
            child: SizedBox(
                height: 50,
                width: 100,
                child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: primary),
                    child: Center(child: Text("Proceed",style: logintxt,)))),
          ),
        )
      ],
    );
  }
}
