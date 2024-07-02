import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nursery/nav.dart';

class Mykid extends StatefulWidget {
  const Mykid({super.key});

  @override
  State<Mykid> createState() => _MykidState();
}

class _MykidState extends State<Mykid> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: Nav(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            const SizedBox(width: 20),
            const Text(
              "My Kid",
              style: TextStyle(
                  fontFamily: "LilitaOne", fontSize: 30, color: Colors.black),
            ),
            const Spacer(),
            const Icon(
              Icons.notifications,
              color: Colors.grey,
              size: 27,
            ),
            const SizedBox(width: 20),
            Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.grey,
                    size: 27,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                );
              },
            ),
            const SizedBox(width: 20),
            Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/profile.png"))
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: screenHeight*0.25,
                width: screenWidth*0.9,
                margin: EdgeInsets.only(left: screenWidth*0.05 , top: screenHeight*0.1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage("images/kid_pic.png"),
                    fit : BoxFit.cover
                  )
                ),
              ),

              Container(
                height:90,
                width: screenWidth*0.9,
                margin: EdgeInsets.only(left: screenWidth*0.05 , top: 3),
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(142, 142, 142, 0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "00 years and 2 months",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "LilitaOne",
                        fontSize: 18
                      ),
                    ), 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Column(
                          children: [
                            Text(
                              "92cm",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14,
                                color: Colors.black
                              ),
                            ),
                            Text(
                              "Height",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "8Weeks",
                              style: TextStyle(
                                
                                fontSize: 14,
                                color: Colors.grey
                              ),
                            ),
                            Text(
                              "32 Day",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "18.32 kg",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14,
                                color: Colors.black
                              ),
                            ),
                            Text(
                              "Weight",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey
                              ),
                            ),
                          ],
                        ),
                       
                      ],
                    )
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: screenWidth*0.05 , top :screenWidth*0.05 , bottom: screenWidth*0.05),
                child: const Text(
                  "Kid's Day",
                  style: TextStyle(
                    fontFamily: "LilitaOne",
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),

              Row(
                children: [
                  SizedBox(width: screenWidth*0.05,),
                  Column(
                    children: [
                      Container(
                        height : screenWidth * 0.15,
                        width : screenWidth * 0.15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(4, 195, 255, 0.3)),
                        child: Center(
                            child: Icon(
                          Icons.boy,
                          color: Color.fromRGBO(4, 195, 255, 1),
                          size:screenWidth*0.1
                        )),
                      ),
                      
                    ],
                  ),
                  SizedBox(width:10),
                  Column(
                    children: [
                      Container(
                        height : screenWidth * 0.15,
                        width : screenWidth * 0.15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(4, 195, 255, 0.3)),
                        child: Center(
                            child: Icon(
                          Icons.menu_book_rounded,
                          color: Color.fromRGBO(4, 195, 255, 1),
                          size:screenWidth*0.1
                        )),
                      ),
                      
                    ],
                  ),
                  SizedBox(width:10),
                  Column(
                    children: [
                      Container(
                        height : screenWidth * 0.15,
                        width : screenWidth * 0.15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(4, 195, 255, 0.3)),
                        child: Center(
                            child: Icon(
                          Icons.phone_iphone_rounded,
                          color: Color.fromRGBO(4, 195, 255, 1),
                          size:screenWidth*0.1
                        )),
                      ),
                    ],
                  ),
                  SizedBox(width:10),
                  Column(
                    children: [
                      Container(
                        height : screenWidth * 0.15,
                        width : screenWidth * 0.15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(4, 195, 255, 0.3)),
                        child: Center(
                            child: Icon(
                          Icons.terrain_sharp,
                          color: Color.fromRGBO(4, 195, 255, 1),
                          size:screenWidth * 0.1
                        )),
                      ),
                      
                    ],
                  ),
                  SizedBox(width:10),
                  Column(
                    children: [
                      Container(
                        height : screenWidth * 0.15,
                        width : screenWidth * 0.15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(142, 142, 142, 0.3)),
                        child: Center(
                            child: Icon(
                          Icons.add,
                          color: Color.fromRGBO(124, 124, 124, 1),
                          size:screenWidth*0.1
                        )),
                      ),
                      
                    ],
                  ),
                ],

              ),

              Padding(
                padding: EdgeInsets.only(left: screenWidth*0.05 , top :screenWidth*0.05 , bottom: screenWidth*0.05),
                child: const Text(
                  "Detailled Acitivty",
                  style: TextStyle(
                    fontFamily: "LilitaOne",
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                height: screenHeight*0.08,
                width: screenWidth*0.9,
                margin: EdgeInsets.only(left: screenWidth*0.05),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(4, 195, 255, 1),
                  ),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height : screenHeight*0.06,
                      width: screenHeight*0.09,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(4, 195, 255, 0.3)
                      ),
                      child: Icon(Icons.bedtime_outlined,
                      size:screenHeight*0.04 ,
                      color: Color.fromRGBO(4, 195, 255, 0.5),),
                      
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sleep",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "LilitaOne",
                            fontSize: screenWidth*0.052
                          ),
                        ),
                        Text(
                          "10:00 AM - 11:00 AM",
                          style: TextStyle(
                            color: Colors.grey,
                            
                            fontSize: screenWidth*0.035
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight*0.03),
              Container(
                height: screenHeight*0.08,
                width: screenWidth*0.9,
                margin: EdgeInsets.only(left: screenWidth*0.05),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(4, 195, 255, 1),
                  ),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height : screenHeight*0.06,
                      width: screenHeight*0.09,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(4, 195, 255, 0.3)
                      ),
                      child: Icon(Icons.bedtime_outlined,
                      size:screenHeight*0.04 ,
                      color: Color.fromRGBO(4, 195, 255, 0.5),),
                      
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sleep",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "LilitaOne",
                            fontSize: screenWidth*0.052
                          ),
                        ),
                        Text(
                          "10:00 AM - 11:00 AM",
                          style: TextStyle(
                            color: Colors.grey,
                            
                            fontSize: screenWidth*0.035
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight*0.03),
              Container(
                height: screenHeight*0.08,
                width: screenWidth*0.9,
                margin: EdgeInsets.only(left: screenWidth*0.05),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(4, 195, 255, 1),
                  ),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height : screenHeight*0.06,
                      width: screenHeight*0.09,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(4, 195, 255, 0.3)
                      ),
                      child: Icon(Icons.bedtime_outlined,
                      size:screenHeight*0.04 ,
                      color: Color.fromRGBO(4, 195, 255, 0.5),),
                      
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sleep",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "LilitaOne",
                            fontSize: screenWidth*0.052
                          ),
                        ),
                        Text(
                          "10:00 AM - 11:00 AM",
                          style: TextStyle(
                            color: Colors.grey,
                            
                            fontSize: screenWidth*0.035
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight*0.03),
              Container(
                height: screenHeight*0.08,
                width: screenWidth*0.9,
                margin: EdgeInsets.only(left: screenWidth*0.05),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(4, 195, 255, 1),
                  ),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height : screenHeight*0.06,
                      width: screenHeight*0.09,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(4, 195, 255, 0.3)
                      ),
                      child: Icon(Icons.bedtime_outlined,
                      size:screenHeight*0.04 ,
                      color: Color.fromRGBO(4, 195, 255, 0.5),),
                      
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sleep",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "LilitaOne",
                            fontSize: screenWidth*0.052
                          ),
                        ),
                        Text(
                          "10:00 AM - 11:00 AM",
                          style: TextStyle(
                            color: Colors.grey,
                            
                            fontSize: screenWidth*0.035
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight*0.03),
            ],
          ),
        )
      );
  }
}