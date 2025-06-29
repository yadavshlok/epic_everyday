import 'package:flutter/material.dart';
import 'package:epic_everyday/pages/home.dart';
import 'package:epic_everyday/pages/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _demoKey = GlobalKey<FormState>();
  var showPass = false;
  var mail = false;
  var pass = false;
  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 440,
            width: 455,
            decoration: BoxDecoration(
              color: Color(0xFFFF5E6E),
              image: DecorationImage(image: AssetImage("assets/images/two.png"),opacity: 0.15,fit: BoxFit.contain,alignment: Alignment(2, -4)),
            ),
            child: Padding(
              padding: EdgeInsets.all(35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back,color: Colors.white,)),
                  SizedBox(height: 55,),
                  Text("Welcome Back!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 20),),
                  SizedBox(height: 25,),
                  Text("Yay! You're back! Thanks for shopping with us.\n We have exited deals and promotions going\n on, grab your pick now!",style: TextStyle(color: Colors.white,fontSize: 12),),
                  SizedBox(height: 77,),
                  Text("LOG IN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 20),),
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
                    Text("Enter Password",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
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
                          hint: Text("Enter Your Password",style: TextStyle(color: Colors.grey.shade500),)
                      ),
                      validator: (value){
                        pass = true;
                      },
                    ),
                    SizedBox(height: 35,),
                    Padding(
                      padding: EdgeInsets.only(left: 8,right: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                              color: Colors.grey
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text("Remember me",style: TextStyle(fontSize: 12),),
                          SizedBox(width: 85,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)
                              {
                                return Register();
                              }));
                            },
                              child: Text("Forgot Password?",style: TextStyle(color: Color(0xFFFF5E6E),fontWeight: FontWeight.w500,fontSize: 12),))
                        ],
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding:EdgeInsets.only(top: 15),
                        child: GestureDetector(
                          onTap: (){
                            if(_demoKey.currentState!.validate())
                              {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context)
                                {
                                  return Home();
                                }
                                ));
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
                            child: Center(child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Not registered yet? ",style: TextStyle(fontSize: 13,color: Colors.grey.shade600),),
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)
                              {
                                return Register();
                              }));
                            },
                            child: Text("Create an Account",style: TextStyle(fontSize: 13,color: Color(0xFFFF5E6E),fontWeight: FontWeight.w500),)),
                      ],
                    )
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
