import 'package:flutter/material.dart';
import 'package:nursery/nav.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
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
            "Activities",
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
                    image: AssetImage("assets/images/profile.png"))),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            height: screenHeight * 0.32,
            width: screenWidth * 0.9,
            margin: EdgeInsets.symmetric(horizontal: screenWidth*0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: screenHeight * 0.18,
                  width: screenWidth * 0.85,
                  margin: EdgeInsets.only(left: screenWidth*0.025),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("images/act2.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),)
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth*0.025),
                      child: const Text(
                        "Drawing and Coloring Activity",
                        style: TextStyle(
                            fontFamily: "LilitaOne",
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                          size: 25,
                    ),
                    SizedBox(width: screenWidth*0.025,)

                  ],
                ),
                Padding(
                      padding: EdgeInsets.only(left: screenWidth*0.025 , top : screenHeight*0.01),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey),
                      ),
                    ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: screenHeight * 0.32,
            width: screenWidth * 0.9,
            margin: EdgeInsets.symmetric(horizontal: screenWidth*0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: screenHeight * 0.18,
                  width: screenWidth * 0.85,
                  margin: EdgeInsets.only(left: screenWidth*0.025),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("images/act2.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),)
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth*0.025),
                      child: const Text(
                        "Drawing and Coloring Activity",
                        style: TextStyle(
                            fontFamily: "LilitaOne",
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                    Spacer(),
                    const Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                          size: 25,
                    ),
                    SizedBox(width: screenWidth*0.025,)

                  ],
                ),
                Padding(
                      padding: EdgeInsets.only(left: screenWidth*0.025 , top : screenHeight*0.01),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey),
                      ),
                    ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: screenHeight * 0.32,
            width: screenWidth * 0.9,
            margin: EdgeInsets.symmetric(horizontal: screenWidth*0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: screenHeight * 0.18,
                  width: screenWidth * 0.85,
                  margin: EdgeInsets.only(left: screenWidth*0.025),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("images/act2.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),)
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth*0.025),
                      child: const Text(
                        "Drawing and Coloring Activity",
                        style: TextStyle(
                            fontFamily: "LilitaOne",
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                    Spacer(),
                    const Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                          size: 25,
                    ),
                    SizedBox(width: screenWidth*0.025,)

                  ],
                ),
                Padding(
                      padding: EdgeInsets.only(left: screenWidth*0.025 , top : screenHeight*0.01),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey),
                      ),
                    ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
