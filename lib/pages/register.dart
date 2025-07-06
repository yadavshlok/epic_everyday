import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:epic_everyday/pages/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _demoKey = GlobalKey<FormState>();
  var showPass = false;
  var name = false;
  var mail = false;
  var pass = false;
  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 333,
            width: 455,
            decoration: BoxDecoration(
              color: Color(0xFFFF5E6E),
              image: DecorationImage(image: AssetImage("assets/images/two.png"),opacity: 0.15,fit: BoxFit.contain,alignment: Alignment(1.3, -3)),
            ),
            child: Padding(
              padding: EdgeInsets.all(35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back,color: Colors.white,)),
                  SizedBox(height: 50,),
                  Text("Lets get started with \n                   Epic Everyday",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 20),),
                  SizedBox(height: 12,),
                  Row(
                    children: [
                      Text("Already have an Account? ",style: TextStyle(color: Colors.white,fontSize: 12),),
                      GestureDetector(
                        onTap: (){
                          Get.to(Login());
                        },
                          child: Text("Log in",style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.w700,decoration: TextDecoration.underline,decorationColor: Colors.white),)),

                    ],
                  ),
                  SizedBox(height: 55,),
                  Text("REGISTER",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 20),),
                ],
              ),
            ),
          ),
          Container(
            child: Form(
              key: _demoKey,
              child: Padding(
                padding: EdgeInsets.all(35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Enter Name",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
                    SizedBox(height: 15,),
                    TextFormField(
                      controller: nameController,
                      validator: (value){
                        name = true;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFF5E6E),width: 1.5),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFF5E6E),width: 1.5),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.5),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          prefixIcon: Icon(Icons.mail_outline),
                          hint: Text("Enter Your Name",style: TextStyle(color: Colors.grey.shade500),),
                          suffixIcon: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if(name)
                                Icon(Icons.error,color: Color(0xFFFF5E6E),)
                            ],
                          )
                      ),
                    ),
                    SizedBox(height: 25,),
                    Text("Enter Email",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
                    SizedBox(height: 15,),
                    TextFormField(
                      controller: mailController,
                      validator: (value){
                        mail = true;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFF5E6E),width: 1.5),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFF5E6E),width: 1.5),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.5),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          prefixIcon: Icon(Icons.mail_outline),
                          hint: Text("Enter Your Email",style: TextStyle(color: Colors.grey.shade500),),
                          suffixIcon: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if(mail)
                                Icon(Icons.error,color: Color(0xFFFF5E6E),)
                            ],
                          )
                      ),
                    ),
                    SizedBox(height: 25,),
                    Text("Create Password",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
                    SizedBox(height: 15,),
                    TextFormField(
                      controller: passController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFF5E6E),width: 1.5),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFF5E6E),width: 1.5),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.5),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          prefixIcon: Icon(Icons.lock_open),
                          hint: Text("Create Your Password",style: TextStyle(color: Colors.grey.shade500),)
                      ),
                      validator: (value){
                        pass = true;
                      },
                    ),
                    SizedBox(height: 35,),
                    Center(
                      child: Padding(
                        padding:EdgeInsets.only(top: 15),
                        child: GestureDetector(
                          onTap: (){
                            if(_demoKey.currentState!.validate())
                            {
                              Get.to(Login());
                            };
                          },
                          child: Container(
                            height: 48,
                            width: 311,
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
                    ),
                    SizedBox(height: 15,),
                    Center(child: Text("By joining I agree to receive emails from Epic Everyday",style: TextStyle(fontSize: 12,color: Colors.grey.shade600),)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
