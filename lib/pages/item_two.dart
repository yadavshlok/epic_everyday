import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../widgets/favourite.dart';

class ItemTwo extends StatefulWidget {
  const ItemTwo({super.key});

  @override
  State<ItemTwo> createState() => _ItemTwoState();
}

class _ItemTwoState extends State<ItemTwo> {

  var isFav = false;
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
                SizedBox(width: 45,),
                Container(
                  height: 285,
                  width: 200,
                  decoration: BoxDecoration(

                  ),
                  child: Image(image: AssetImage("assets/images/greyjacket.png")),
                ),
                SizedBox(width: 25,),
                Padding(
                  padding: EdgeInsets.only(top: 42),
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22.5)
                    ),
                    child: Favourite(
                        isFav: !isFav,
                        ontap: (){
                          setState(() {
                            isFav = !isFav;
                          });
                        }
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 609,
            width: 455,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(55),topRight: Radius.circular(55))
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 42,),
                  Text("Epic Everyday",style: TextStyle(color: Colors.black,fontSize: 12),),
                  Row(
                    children: [
                      Text("Grey Jacket",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),),
                      SizedBox(width: 120,),
                      Text("\$48.00 USD",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w700),)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.yellow.shade300,size: 18,),
                      Icon(Icons.star,color: Colors.yellow.shade300,size: 18,),
                      Icon(Icons.star,color: Colors.yellow.shade300,size: 18,),
                      Icon(Icons.star,color: Colors.yellow.shade300,size: 18,),
                      Icon(Icons.star,color: Colors.grey.shade300,size: 18,),
                      Text("(4.5)",style: TextStyle(color: Colors.grey.shade400),)
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Container(
                        height: 24,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300,width: 0.9),
                            borderRadius: BorderRadius.circular(3)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.remove,size: 14,),
                            Text("1",style: TextStyle(fontWeight: FontWeight.w600),),
                            Icon(Icons.add,size: 15,)
                          ],
                        ),
                      ),
                      SizedBox(width: 195,),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: AppColors.bgColor,
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Icon(Icons.file_upload_outlined),
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text("DESCRIPTION",style: TextStyle(fontWeight: FontWeight.w600),),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(style: TextStyle(color: Colors.grey.shade600),"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book..."),
                  ),
                  SizedBox(height: 38,),
                  Text("SELECT SIZE",style: TextStyle(fontWeight: FontWeight.w600),),
                  SizedBox(height: 12,),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(child: Text("S",style: TextStyle(fontSize: 16,color: Colors.white),)),
                      ),
                      SizedBox(width: 11,),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: AppColors.bgColor,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(child: Text("M",style: TextStyle(fontSize: 16,color: Colors.black87),)),
                      ),
                      SizedBox(width: 11,),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: AppColors.bgColor,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(child: Text("L",style: TextStyle(fontSize: 16,color: Colors.black87),)),
                      ),
                      SizedBox(width: 11,),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: AppColors.bgColor,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(child: Text("XL",style: TextStyle(fontSize: 16,color: Colors.black87),)),
                      ),
                      SizedBox(width: 11,),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: AppColors.bgColor,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(child: Text("XXL",style: TextStyle(fontSize: 16,color: Colors.black87),)),
                      ),
                    ],
                  ),
                  SizedBox(height: 50,),
                  Container(
                    height: 100,
                    width: 455,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 52,
                            width: 345,
                            decoration: BoxDecoration(
                                color: Color(0xFFFF5E6E),
                                border: Border.all(color: Color(0xFFFF5E6E),width: 2),
                                borderRadius: BorderRadius.circular(22)
                              // image: DecorationImage(image: ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_bag_outlined,color: Colors.white,),
                                SizedBox(width: 22,),
                                Text("ADD TO CART",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                              ],
                            )
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
