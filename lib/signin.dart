import 'package:emirates/Commoncolor.dart';
import 'package:emirates/Homesccreen.dart';
import 'package:emirates/Login.dart';
import 'package:emirates/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'CommonTextstyle.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool toogle=false;
  bool toogle1=false;
  TextEditingController username=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController mobile=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController confirm=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: primary,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:40.0),
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
              style: logintxt,
              controller: username,
              cursorColor: Colors.white,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  labelText: "Enter Username",
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
              style: logintxt,
              controller: email,
              cursorColor: Colors.white,
              keyboardType: TextInputType.emailAddress,
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
            padding: const EdgeInsets.all(15.0),
            child: IntlPhoneField(
              style: logintxt,
              controller: mobile,
              cursorColor: Colors.white,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Enter Mobilenumber",
                  labelStyle: logintxt,
                  iconColor: Colors.white,
                  focusedBorder:   OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white,width: 2)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white,width: 2)
                  )

              ),
              initialCountryCode: 'UAE',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
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
            padding: const EdgeInsets.all(18.0),
            child: TextFormField(
              controller: confirm,
              obscureText:toogle1?true:false,
              style: logintxt,
              cursorColor: Colors.white,
              onTap: (){
                setState(() {
                  toogle1=!toogle1;
                });
              },
              decoration: InputDecoration(
                  labelText: "Re-Enter Password",
                  labelStyle: logintxt,
                  suffixIcon: Icon(toogle1?Icons.remove_red_eye_rounded:Icons.visibility_off,color: Colors.white,),
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
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white,shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  )),
                  onPressed: (){
                    if(username.text.isEmpty){
                      StackDialog.show("Emirates", "Please Enter Username to Proceed", Icons.person, Colors.red);
                    }
                    else if(email.text.isEmpty){
                      StackDialog.show("Emirates", "Please Enter Email to Proceed", Icons.email, Colors.red);
                    }
                    else if(mobile.text.isEmpty){
                      StackDialog.show("Emirates", "Please Enter Mobile Number to Proceed", Icons.phone_android, Colors.red);
                    }
                    else if(password.text.isEmpty){
                      StackDialog.show("Emirates", "Please Enter Password to Proceed", Icons.password, Colors.red);
                    }
                    else if(password.text.isEmpty){
                      StackDialog.show("Emirates", "Please Enter Password to Proceed", Icons.password, Colors.red);
                    }
                    else{
                      Get.to(const Homescreen());
                    }
                    }
                  , child: Center(child: Text("Create an New account",style: loginbtn1,))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(onPressed: (){Get.to(loginscreen());},child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Already a member?",style: loginbtn,),
                Text("Join now",style: loginbtn2,),
              ],
            ),),
          ),

        ],
      ),
    );
  }
}
