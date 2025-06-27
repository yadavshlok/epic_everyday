import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:epic_everyday/pages/favorite.dart';
import 'package:epic_everyday/pages/page_one.dart';
import 'package:epic_everyday/pages/search.dart';

import 'cart.dart';
import 'item_one.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var popular = true;
  var mens = false;
  var women = false;
  var sale = false;
  var fav1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    {
                      return PageOne();
                    }
                    ));
                  },
                    child: Text("Epic Everyday",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),)),
                SizedBox(width: 56,),
                Icon(Icons.notifications_none),
                SizedBox(width: 15,),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:
                      (context)
                          {
                            return Cart();
                          }
                      ));
                    },
                    child: Icon(Icons.shopping_bag_outlined)),
                SizedBox(width: 15,),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context)
                      {
                        return Favorite();
                      }
                      ));
                    },
                    child: Icon(Icons.favorite_border)),
                SizedBox(width: 15,),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context)
                      {
                        return Search();
                      }
                      ));
                    },
                    child: Icon(Icons.search)),
                SizedBox(width: 15,),
                Icon(Icons.menu)
              ],
            ),
          ),
          SizedBox(height: 45,),
          Padding(
            padding: EdgeInsets.only(left: 12,right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      popular = true;
                      mens = false;
                      women = false;
                      sale = false;
                    });
                  },
                  child: Container(
                    child: popular? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Popular",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,color: Color(0xFFFF5E6E)),),
                        SizedBox(height: 4,),
                        Container(
                          height: 1,
                          width: 20,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFFF5E6E),width: 2.2)
                          ),
                        )
                      ],
                    ) : Text("Popular",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.grey.shade600),),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      popular = false;
                      mens = true;
                      women = false;
                      sale = false;
                    });
                  },
                  child: Container(
                    child: mens? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Mens",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,color: Color(0xFFFF5E6E)),),
                        SizedBox(height: 4,),
                        Container(
                          height: 1,
                          width: 20,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFFF5E6E),width: 2.2)
                          ),
                        )
                      ],
                    ) : Text("Mens",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.grey.shade600),),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      popular = false;
                      mens = false;
                      women = true;
                      sale = false;
                    });
                  },
                  child: Container(
                    child: women? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Womens",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,color: Color(0xFFFF5E6E)),),
                        SizedBox(height: 4,),
                        Container(
                          height: 1,
                          width: 20,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFFF5E6E),width: 2.2)
                          ),
                        )
                      ],
                    ) : Text("Womens",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.grey.shade600),),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      popular = false;
                      mens = false;
                      women = false;
                      sale = true;
                    });
                  },
                  child: Container(
                    child: sale? Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Sale",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,color: Color(0xFFFF5E6E)),),
                        SizedBox(height: 4,),
                        Container(
                          height: 1,
                          width: 20,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFFF5E6E),width: 2.2)
                          ),
                        )
                      ],
                    ) : Text("Sale",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.grey.shade600),),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300)
            ),
          ),
          SizedBox(height: 45,),
          Row(
            children: [
              SizedBox(width: 35,),
              Text("FILTER & SORT",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
              SizedBox(width: 8,),
              Icon(Icons.sort),
              SizedBox(width: 160,),
              Icon(CupertinoIcons.square_grid_2x2),
              SizedBox(width: 4,),
              Icon(Icons.square),
            ],
          ),
          SizedBox(height: 45,),
          Padding(
            padding: EdgeInsets.only(left: 12,right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)
                        {
                          return ItemOne();
                        }
                        ));
                      },
                      child: Container(
                        height: 200,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F4FB),
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(image: AssetImage("assets/images/greyjacket.png"),fit: BoxFit.values[6])
                        ),
                        child:
                        Padding(
                          padding: EdgeInsets.only(left: 105,bottom: 145),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                fav1 = !fav1;
                              });
                            },
                            child: Container(
                                child: fav1?
                                Icon(Icons.favorite,color: Color(0xFFFF5E6E),):Icon(Icons.favorite_border),),
                          ),
                        )
                      ),
                    ),
                    SizedBox(height: 12,),
                    Text("Grey Jacket",style: TextStyle(fontWeight: FontWeight.w800),),
                    Text("\$28.00 USD",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700,color: Colors.grey.shade600),)
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Color(0xFFF1F4FB),
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(image: AssetImage("assets/images/whitetee.png"),fit: BoxFit.scaleDown)
                      ),
                    ),
                    SizedBox(height: 12,),
                    Text("White T-Shirt",style: TextStyle(fontWeight: FontWeight.w800),),
                    Text("\$36.00 USD",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700,color: Colors.grey.shade600),)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: EdgeInsets.only(left: 12,right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Color(0xFFF1F4FB),
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(image: AssetImage("assets/images/hoodie.png"),fit: BoxFit.scaleDown),
                      ),
                    ),
                    SizedBox(height: 12,),
                    Text("Hoodie",style: TextStyle(fontWeight: FontWeight.w800),),
                    Text("\$19.00 USD",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700,color: Colors.grey.shade600),)
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Color(0xFFF1F4FB),
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(image: AssetImage("assets/images/greycoat.png"),fit: BoxFit.scaleDown),
                      ),
                    ),
                    SizedBox(height: 12,),
                    Text("Grey Coat",style: TextStyle(fontWeight: FontWeight.w800),),
                    Text("\$45.00 USD",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700,color: Colors.grey.shade600),)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
