import 'package:flutter/material.dart';
import 'package:epic_everyday/pages/page_two.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
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
                  child: Text("Epic Everyday",style: TextStyle(color: Colors.white,fontSize: 40,fontFamily: 'myfonts',fontWeight: FontWeight.w700),),
                ),
                Padding(
                  padding:EdgeInsets.only(top: 25),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context)
                          {
                            return PageTwo();
                          }
                      ));
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
