import 'package:epic_everyday/pages/item_four.dart';
import 'package:epic_everyday/pages/item_one.dart';
import 'package:epic_everyday/pages/item_three.dart';
import 'package:epic_everyday/pages/item_two.dart';
import 'package:epic_everyday/utils/app_colors.dart';
import 'package:epic_everyday/utils/text_styles.dart';
import 'package:epic_everyday/widgets/favourite.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:epic_everyday/pages/favorite.dart';
import 'package:epic_everyday/pages/welcome_page.dart';
import 'package:epic_everyday/pages/search.dart';
import 'cart.dart';

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
  var fav2 = false;
  var fav3 = false;
  var fav4 = false;

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
                    Get.to(WelcomePage());
                  },
                    child: Text("Epic Everyday",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),)),
                SizedBox(width: 56,),
                Icon(Icons.notifications_none),
                SizedBox(width: 15,),
                GestureDetector(
                    onTap: (){
                      Get.to(Cart());
                    },
                    child: Icon(Icons.shopping_bag_outlined)),
                SizedBox(width: 15,),
                GestureDetector(
                    onTap: (){
                      Get.to(Favorite());
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
          SizedBox(height: 35,),
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
          Expanded(
            child: GridView.count(
                crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 0.55,
              padding: EdgeInsets.all(30),
              children: [
                Column(
                  children: [
                    Container(
                      height: 211,
                      width: 185,
                      decoration: BoxDecoration(
                        color: AppColors.bgColor,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 35,
                              left: 18,
                              child: GestureDetector(
                                onTap: (){
                                  Get.to(ItemOne(),arguments: fav1);
                                },
                                child: Container(
                                  height: 135,
                                  child: Image(image: AssetImage("assets/images/greyjacket.png")),
                                ),
                              )
                          ),
                          Positioned(
                            left: 128,
                              top: 15,
                              child: Favourite(
                                  isFav: !fav1,
                                  ontap: (){
                                    setState(() {
                                      fav1 = !fav1;
                                    });
                                  }
                              )
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 3,),
                    Text("Grey Jacket",style: TextStyles.h4),
                    Text("\$28.00 USD",style: TextStyles.h4.copyWith(color: Colors.grey.shade500))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 211,
                      width: 185,
                      decoration: BoxDecoration(
                          color: AppColors.bgColor,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 35,
                              left: 20,
                              child: GestureDetector(
                                onTap: (){
                                  Get.to(ItemTwo(),arguments: fav2);
                                },
                                child: Container(
                                  height: 130,
                                  child: Image(image: AssetImage("assets/images/whitetee.png")),
                                ),
                              )
                          ),
                          Positioned(
                              left: 128,
                              top: 15,
                              child: Favourite(
                                  isFav: !fav2,
                                  ontap: (){
                                    setState(() {
                                      fav2 = !fav2;
                                    });
                                  }
                              )
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 3,),
                    Text("White T-Shirt",style: TextStyles.h4),
                    Text("\$36.00 USD",style: TextStyles.h4.copyWith(color: Colors.grey.shade500))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 211,
                      width: 185,
                      decoration: BoxDecoration(
                          color: AppColors.bgColor,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 35,
                              left: 21,
                              child: GestureDetector(
                                onTap: (){
                                  Get.to(ItemThree(),arguments: fav3);
                                },
                                child: Container(
                                  height: 138,
                                  child: Image(image: AssetImage("assets/images/hoodie.png")),
                                ),
                              )
                          ),
                          Positioned(
                              left: 128,
                              top: 15,
                              child: Favourite(
                                  isFav: !fav3,
                                  ontap: (){
                                    setState(() {
                                      fav3 = !fav3;
                                    });
                                  }
                              )
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 3,),
                    Text("Hoodie",style: TextStyles.h4),
                    Text("\$19.00 USD",style: TextStyles.h4.copyWith(color: Colors.grey.shade500))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 211,
                      width: 185,
                      decoration: BoxDecoration(
                          color: AppColors.bgColor,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 35,
                              left: 31,
                              child: GestureDetector(
                                onTap: (){
                                  Get.to(ItemFour(),arguments: fav4);
                                },
                                child: Container(
                                  height: 145,
                                  child: Image(image: AssetImage("assets/images/greycoat.png")),
                                ),
                              )
                          ),
                          Positioned(
                              left: 128,
                              top: 15,
                              child: Favourite(
                                  isFav: !fav4,
                                  ontap: (){
                                    setState(() {
                                      fav4 = !fav4;
                                    });
                                  }
                              )
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 3,),
                    Text("Grey Coat",style: TextStyles.h4),
                    Text("\$45.00 USD",style: TextStyles.h4.copyWith(color: Colors.grey.shade500))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
