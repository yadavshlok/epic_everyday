import 'package:flutter/material.dart';

class ItemOne extends StatelessWidget {
  const ItemOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFedf3ff),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 30,),
                Padding(
                  padding: EdgeInsets.only(top: 45),
                  child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back)),
                ),
                SizedBox(width: 30,),
                Container(
                  height: 300,
                  width: 230,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/greyjacket.png"))
                  ),
                ),
                SizedBox(width: 25,),
                Padding(
                  padding: EdgeInsets.only(top: 45),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20  )
                    ),
                    child: Icon(Icons.favorite_border),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 594,
            width: 455,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(55),topRight: Radius.circular(55))
            ),
          )
        ],
      ),
    );
  }
}
