import 'package:flutter/material.dart';
import 'package:nursery/MyKid.dart';
import 'package:nursery/nav.dart';

class tripDesc extends StatefulWidget {
  const tripDesc({super.key});

  @override
  State<tripDesc> createState() => _tripDescState();
}

class _tripDescState extends State<tripDesc> {
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
              "Chriaa Trip",
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
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Mykid()));
              },
              child: Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/profile.png"))),
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
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.025 , top : screenHeight*0.05),
                child: const Text(
                  "Details",
                  style: TextStyle(
                      fontFamily: "Poppins", fontSize: 20, color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.025 ,top: 10),
                child: const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod Lorem ipsum dolor sit amet, consectetur  adipiscing elit, sed do eiusmod ",
                  style: TextStyle(
                      fontFamily: "Poppins", fontSize: 15, color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.025 , top : screenHeight*0.05),
                child: const Text(
                  "Memories",
                  style: TextStyle(
                      fontFamily: "Poppins", fontSize: 20, color: Colors.black),
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: screenHeight *0.25,
                      width: screenWidth*0.4,
                      margin: EdgeInsets.only(left: screenWidth*0.025 , top: screenHeight*0.015),
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(20),
                        image : DecorationImage(image: AssetImage("images/memories.png"), fit : BoxFit.cover)
                      ),
                    ),
                    Container(
                      height: screenHeight *0.25,
                      width: screenWidth*0.4,
                      margin: EdgeInsets.only(left: screenWidth*0.025 , top: screenHeight*0.015),
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(20),
                        image : DecorationImage(image: AssetImage("images/memories.png"), fit : BoxFit.cover)
                      ),
                    ),
                    Container(
                      height: screenHeight *0.25,
                      width: screenWidth*0.4,
                      margin: EdgeInsets.only(left: screenWidth*0.025 , top: screenHeight*0.015),
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(20),
                        image : DecorationImage(image: AssetImage("images/memories.png"), fit : BoxFit.cover)
                      ),
                    ),
                    Container(
                      height: screenHeight *0.25,
                      width: screenWidth*0.4,
                      margin: EdgeInsets.only(left: screenWidth*0.025 , top: screenHeight*0.015),
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(20),
                        image : DecorationImage(image: AssetImage("images/memories.png"), fit : BoxFit.cover)
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.025 , top : screenHeight*0.05),
                child: const Text(
                  "Parents Reviews",
                  style: TextStyle(
                      fontFamily: "Poppins", fontSize: 20, color: Colors.black),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: screenHeight * 0.18,
                      width: screenWidth * 0.95,
                      margin: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.025, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 52,
                                width: 52,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image:
                                            AssetImage("images/profile.png"))),
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 3, top: 10),
                                    child: Text(
                                      "Saidi Abdelkader",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 13,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 3),
                                      child: const Row(
                                        children: [
                                          Icon(
                                            Icons.star_rounded,
                                            size: 17,
                                            color:
                                                Color.fromRGBO(250, 191, 53, 1),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 17,
                                            color:
                                                Color.fromRGBO(250, 191, 53, 1),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 17,
                                            color:
                                                Color.fromRGBO(250, 191, 53, 1),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 17,
                                            color:
                                                Color.fromRGBO(250, 191, 53, 1),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 17,
                                            color: Color.fromRGBO(
                                                232, 232, 232, 1),
                                          ),
                                        ],
                                      )),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: screenWidth * 0.025),
                            child: const Text(
                              "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor incididuntut labore et dolore magna aliqua.",
                              style: TextStyle(
                                  color: Color.fromRGBO(142, 142, 142, 0.7),
                                  fontFamily: "Poppins",
                                  fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.05,
                    ),
                    Container(
                      height: screenHeight * 0.18,
                      width: screenWidth * 0.95,
                      margin: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.025, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 52,
                                width: 52,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image:
                                            AssetImage("images/profile.png"))),
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 3, top: 10),
                                    child: Text(
                                      "Saidi Abdelkader",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 13,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 3),
                                      child: const Row(
                                        children: [
                                          Icon(
                                            Icons.star_rounded,
                                            size: 17,
                                            color:
                                                Color.fromRGBO(250, 191, 53, 1),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 17,
                                            color:
                                                Color.fromRGBO(250, 191, 53, 1),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 17,
                                            color:
                                                Color.fromRGBO(250, 191, 53, 1),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 17,
                                            color:
                                                Color.fromRGBO(250, 191, 53, 1),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 17,
                                            color: Color.fromRGBO(
                                                232, 232, 232, 1),
                                          ),
                                        ],
                                      )),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: screenWidth * 0.025),
                            child: const Text(
                              "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor incididuntut labore et dolore magna aliqua.",
                              style: TextStyle(
                                  color: Color.fromRGBO(142, 142, 142, 0.7),
                                  fontFamily: "Poppins",
                                  fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
