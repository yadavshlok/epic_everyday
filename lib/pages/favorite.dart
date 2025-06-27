import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFedf3ff),
      body: Column(
        children: [
          ListTile(
            leading: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 20,left: 8),
                  child: Icon(Icons.arrow_back,size: 28,color: Colors.black,),
                )),
            title: Padding(
              padding: EdgeInsets.only(top: 20,left: 82),
              child: Text("My Favorites",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
            ),
          ),
          SizedBox(height: 22,),
          Container(
            height: 829.2,
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
