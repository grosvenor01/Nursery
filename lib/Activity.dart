import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nursery/Components/notif.dart';

import 'package:nursery/nav.dart';
import 'package:shimmer/shimmer.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  List data = [];
  var _isLoading = true;
  getActivities() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection("Activity").get();
    data.addAll(querySnapshot.docs); //list of documents
    _isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    getActivities();
    super.initState();
  }

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
          notifs(),
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
          children: [
            if(_isLoading)
            for (final activity in data)
              Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  height: screenHeight * 0.32,
                  width: screenWidth * 0.9,
                  margin: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                    vertical: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: screenHeight * 0.18,
                        width: screenWidth * 0.85,
                        margin: EdgeInsets.only(left: screenWidth * 0.025),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.025),
                        child: Container(
                          width: screenWidth * 0.5,
                          height: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.025),
                        child: Container(
                          width: screenWidth * 0.7,
                          height: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if(!_isLoading)
              for (final activity in data)
                Container(
                  height: screenHeight * 0.32,
                  width: screenWidth * 0.9,
                  margin: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.05, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: screenHeight * 0.18,
                          width: screenWidth * 0.85,
                          margin: EdgeInsets.only(left: screenWidth * 0.025),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(activity["Image"]),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10),
                          )),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: screenWidth * 0.025),
                            child: Text(
                              activity["Title"],
                              style: const TextStyle(
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
                          SizedBox(
                            width: screenWidth * 0.025,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.025,
                            top: screenHeight * 0.01),
                        child: Text(
                          activity["Description"],
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
