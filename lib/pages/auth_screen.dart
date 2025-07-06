import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:epic_everyday/pages/login.dart';
import 'package:epic_everyday/pages/register.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: 
            Column(
              children: [
                Container(
                  height: 99,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color(0xFFFF5E6E),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(55),bottomLeft: Radius.circular(55)),
                    // image: DecorationImage(image: AssetImage("assets/images/up.png"),fit: BoxFit.cover)
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 69),
                  child: Center(child: Text("Epic Everyday",style: TextStyle(color: Colors.black,fontSize: 40,fontFamily: 'myfonts',fontWeight: FontWeight.w700,),)),
                ),
                Container(
                  height: 1,
                  width: 125,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFF5E6E),width: 2)
                  ),
                ),
                SizedBox(height: 55,),
                Center(child: Text("Create your fashion\n   in your own way",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500,height: 1),)),
                SizedBox(height: 20,),
                Center(child: Text("Each men and women has their own style.\n        Epic Everyday helps you to create\n                      your unique style.",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400,),)),
                SizedBox(height: 20,),
                Padding(
                  padding:EdgeInsets.only(top: 25),
                  child: GestureDetector(
                    onTap: (){
                        Get.to(Login());
                    },
                    child: Container(
                      height: 44,
                      width: 169,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 2),
                          borderRadius: BorderRadius.circular(22)
                        // image: DecorationImage(image: ),
                      ),
                      child: Center(child: Text("LOGIN",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),)),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: 25,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text("OR",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                    SizedBox(width: 10,),
                    Container(
                      height: 1,
                      width: 25,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:EdgeInsets.only(top: 25),
                  child: GestureDetector(
                    onTap: (){
                      Get.to(Register());
                    },
                    child: Container(
                      height: 44,
                      width: 169,
                      decoration: BoxDecoration(
                        color: Color(0xFFFF5E6E),
                          border: Border.all(color: Color(0xFFFF5E6E),width: 2),
                          borderRadius: BorderRadius.circular(22)
                        // image: DecorationImage(image: ),
                      ),
                      child: Center(child: Text("REGISTER",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),)),
                    ),
                  ),
                ),
                SizedBox(height: 45,),
                Center(child: Text("Our Social Handles!",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500,height: 1),)),
                SizedBox(height: 22,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 38,
                      width: 40,
                      child: Image(image: AssetImage("assets/images/facebook.png")),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 38,
                      width: 40,
                      child: Image(image: AssetImage("assets/images/instagram.png")),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 35,
                      width: 36,
                      child: Image(image: AssetImage("assets/images/whatsapp.png")),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
