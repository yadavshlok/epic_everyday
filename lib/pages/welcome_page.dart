import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:epic_everyday/pages/auth_screen.dart';

import '../utils/text_styles.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 914,
            width: 455,
            decoration: BoxDecoration(
              color: Color(0xFFFF5E6E),
              image: DecorationImage(image: AssetImage("assets/images/one.jpg"),opacity: 0.4,fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 555),
                  child: Text("Epic Everyday",style: TextStyles.title),
                ),
                Padding(
                  padding:EdgeInsets.only(top: 25),
                  child: GestureDetector(
                    onTap: (){
                      Get.to(AuthScreen());
                    },
                    child: Container(
                      height: 44,
                      width: 166,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: 2.5),
                        borderRadius: BorderRadius.circular(22)
                        // image: DecorationImage(image: ),
                      ),
                      child: Center(child: Text("SHOP NOW",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),)),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
