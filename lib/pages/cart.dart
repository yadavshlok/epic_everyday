import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  dynamic cnt_one = 1;
  dynamic prs_one = 28.00;
  dynamic cnt_two = 1;
  dynamic prs_two = 36.00;
  dynamic cnt_three = 1;
  dynamic prs_three = 19.00;
  dynamic cnt_four = 1;
  dynamic prs_four = 45.00;
  dynamic total = 128.0;

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
              padding: EdgeInsets.only(top: 20,left: 92),
              child: Text("My Cart",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
            ),
          ),
          SizedBox(height: 22,),
          Container(
            height: 733,
            width: 455,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(55),topRight: Radius.circular(55))
            ),
            child: Padding(
              padding:  EdgeInsets.only(top: 45),
              child: ListView(
                    children: [
                      Padding(
                      padding:  EdgeInsets.only(left: 38,right: 38,top: 10,bottom: 10),
                      child: Container(
                        height: 150,
                        width: 269,
                        decoration: BoxDecoration(
                          color: Color(0xFFedf3ff),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                child: Container(
                                  height: 169,
                                  width: 269,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFedf3ff),
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                )
                            ),
                            Positioned(
                              top: 35,
                                left: 33,
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  child: Image(image: AssetImage("assets/images/greyjacket.png")),
                                )
                            ),
                            Positioned(
                              left: 133,
                                top: 30,
                                child: Column(
                                  children: [
                                    Text("Grey Jacket",style: TextStyle(fontSize: 15,color: Color(0xFFFF5E6E),fontWeight: FontWeight.w600),),
                                    Text("Epic Everyday",style: TextStyle(fontSize: 12,color: Colors.grey.shade400,fontWeight: FontWeight.w500),),
                                    SizedBox(height: 25,),
                                    Text("\$$prs_one USD",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w600),)
                                  ],
                                )
                            ),
                            Positioned(
                              top: 20,
                              left: 245,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(Icons.cancel_outlined,color: Color(0xFFFF5E6E),),
                                    SizedBox(height: 45,),
                                    Container(
                                      height: 25,
                                      width: 75,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          GestureDetector(
                                              onTap: (){
                                                setState(() {
                                                  cnt_one--;
                                                  prs_one -= 28;
                                                  total = prs_one+prs_two+prs_three+prs_four;
                                                });
                                              },
                                              child: Icon(Icons.remove,size: 15,)),
                                          Text("$cnt_one"),
                                          GestureDetector(
                                              onTap: (){
                                                setState(() {
                                                  cnt_one++;
                                                  prs_one += 28;
                                                  total = prs_one+prs_two+prs_three+prs_four;
                                                });
                                              },
                                              child: Icon(Icons.add,size: 15,))
                                        ],
                                      ),
                                    )
                                  ],
                                )
                            )

                          ],
                        ),
                      ),
                    ),
                      Padding(
                        padding:  EdgeInsets.only(left: 38,right: 38,top: 10,bottom: 10),
                        child: Container(
                          height: 150,
                          width: 269,
                          decoration: BoxDecoration(
                              color: Color(0xFFedf3ff),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  child: Container(
                                    height: 169,
                                    width: 269,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFedf3ff),
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                  )
                              ),
                              Positioned(
                                  top: 35,
                                  left: 33,
                                  child: Container(
                                    height: 75,
                                    width: 75,
                                    child: Image(image: AssetImage("assets/images/whitetee.png")),
                                  )
                              ),
                              Positioned(
                                  left: 133,
                                  top: 30,
                                  child: Column(
                                    children: [
                                      Text("White T-Shirt",style: TextStyle(fontSize: 15,color: Color(0xFFFF5E6E),fontWeight: FontWeight.w600),),
                                      Text("Epic Everyday",style: TextStyle(fontSize: 12,color: Colors.grey.shade400,fontWeight: FontWeight.w500),),
                                      SizedBox(height: 25,),
                                      Text("\$$prs_two USD",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w600),)
                                    ],
                                  )
                              ),
                              Positioned(
                                  top: 20,
                                  left: 245,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(Icons.cancel_outlined,color: Color(0xFFFF5E6E),),
                                      SizedBox(height: 45,),
                                      Container(
                                        height: 25,
                                        width: 75,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey),
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    cnt_two--;
                                                    prs_two -= 36;
                                                    total = prs_one+prs_two+prs_three+prs_four;
                                                  });
                                                },
                                                child: Icon(Icons.remove,size: 15,)),
                                            Text("$cnt_two"),
                                            GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    cnt_two++;
                                                    prs_two += 36;
                                                    total = prs_one+prs_two+prs_three+prs_four;
                                                  });
                                                },
                                                child: Icon(Icons.add,size: 15,))
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                              )

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 38,right: 38,top: 10,bottom: 10),
                        child: Container(
                          height: 150,
                          width: 269,
                          decoration: BoxDecoration(
                              color: Color(0xFFedf3ff),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  child: Container(
                                    height: 169,
                                    width: 269,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFedf3ff),
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                  )
                              ),
                              Positioned(
                                  top: 35,
                                  left: 33,
                                  child: Container(
                                    height: 75,
                                    width: 75,
                                    child: Image(image: AssetImage("assets/images/hoodie.png")),
                                  )
                              ),
                              Positioned(
                                  left: 133,
                                  top: 30,
                                  child: Column(
                                    children: [
                                      Text("Hoodie",style: TextStyle(fontSize: 15,color: Color(0xFFFF5E6E),fontWeight: FontWeight.w600),),
                                      Text("Epic Everyday",style: TextStyle(fontSize: 12,color: Colors.grey.shade400,fontWeight: FontWeight.w500),),
                                      SizedBox(height: 25,),
                                      Text("\$$prs_three USD",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w600),)
                                    ],
                                  )
                              ),
                              Positioned(
                                  top: 20,
                                  left: 245,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(Icons.cancel_outlined,color: Color(0xFFFF5E6E),),
                                      SizedBox(height: 45,),
                                      Container(
                                        height: 25,
                                        width: 75,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey),
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    cnt_three--;
                                                    prs_three -= 19;
                                                    total = prs_one+prs_two+prs_three+prs_four;
                                                  });
                                                },
                                                child: Icon(Icons.remove,size: 15,)),
                                            Text("$cnt_three"),
                                            GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    cnt_three++;
                                                    prs_three += 19;
                                                    total = prs_one+prs_two+prs_three+prs_four;
                                                  });
                                                },
                                                child: Icon(Icons.add,size: 15,))
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                              )

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 38,right: 38,top: 10,bottom: 10),
                        child: Container(
                          height: 150,
                          width: 269,
                          decoration: BoxDecoration(
                              color: Color(0xFFedf3ff),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  child: Container(
                                    height: 169,
                                    width: 269,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFedf3ff),
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                  )
                              ),
                              Positioned(
                                  top: 35,
                                  left: 33,
                                  child: Container(
                                    height: 75,
                                    width: 75,
                                    child: Image(image: AssetImage("assets/images/greycoat.png")),
                                  )
                              ),
                              Positioned(
                                  left: 133,
                                  top: 30,
                                  child: Column(
                                    children: [
                                      Text("Grey Coat",style: TextStyle(fontSize: 15,color: Color(0xFFFF5E6E),fontWeight: FontWeight.w600),),
                                      Text("Epic Everyday",style: TextStyle(fontSize: 12,color: Colors.grey.shade400,fontWeight: FontWeight.w500),),
                                      SizedBox(height: 25,),
                                      Text("\$$prs_four USD",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w600),)
                                    ],
                                  )
                              ),
                              Positioned(
                                  top: 20,
                                  left: 245,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(Icons.cancel_outlined,color: Color(0xFFFF5E6E),),
                                      SizedBox(height: 45,),
                                      Container(
                                        height: 25,
                                        width: 75,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey),
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    cnt_four--;
                                                    prs_four -= 45;
                                                    total = prs_one+prs_two+prs_three+prs_four;
                                                  });
                                                },
                                                child: Icon(Icons.remove,size: 15,)),
                                            Text("$cnt_four"),
                                            GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    cnt_four++;
                                                    prs_four += 45;
                                                    total = prs_one+prs_two+prs_three+prs_four;
                                                  });
                                                },
                                                child: Icon(Icons.add,size: 15,))
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
              ),
            ),
          ),
          Container(
            height: 96,
            width: 455,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 321,
                  decoration: BoxDecoration(
                      color: Color(0xFFFF5E6E),
                      border: Border.all(color: Color(0xFFFF5E6E),width: 2),
                      borderRadius: BorderRadius.circular(22)
                    // image: DecorationImage(image: ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 62,),
                      Icon(Icons.output,color: Colors.white,),
                      SizedBox(width: 30,),
                      Text("CHECKOUT",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                      SizedBox(width: 30,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            total = prs_one+prs_two+prs_three+prs_four;
                          });
                        },
                        child: Container(
                          height: 25,
                          width: 65,
                          decoration: BoxDecoration(
                            color: Colors.black12
                          ),
                          child: Center(child: Text("$total",style: TextStyle(color: Colors.white,)),)
                        ),
                      )
                    ],
                  )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
