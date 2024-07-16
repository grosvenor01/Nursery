import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nursery/MyKid.dart';
import 'package:nursery/nav.dart';
import 'package:shimmer/shimmer.dart';

class tripDesc extends StatefulWidget {
  String title;
  tripDesc({required this.title, super.key});

  @override
  State<tripDesc> createState() => _tripDescState();
}

class _tripDescState extends State<tripDesc> {
  var data;
  var _isLoaded = false;
  getDoc() async {
    CollectionReference collection =
        await FirebaseFirestore.instance.collection("Trips");
    QuerySnapshot query =
        await collection.where("Title", isEqualTo: widget.title).get();

    var first_doc = query.docs[0];
    data = first_doc.data(); // as its a JsonQuerySnapshot
    var dt = data["image"];
    print(dt.length);
    _isLoaded = true;
    setState(() {});
  }

  @override
  void initState() {
    getDoc();
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
            Text(
              widget.title,
              style: TextStyle(
                  fontFamily: "LilitaOne", fontSize: 30, color: Colors.black),
            ),
            const Spacer(),
            const Icon(
              Icons.notifications,
              color: Colors.grey,
              size: 27,
            ),
            Spacer(),
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
            Spacer(),
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
          child: _isLoaded
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.025, top: screenHeight * 0.05),
                      child: const Text(
                        "Details",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: screenWidth * 0.025, top: 10),
                      child: Text(
                        data["details"],
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.025, top: screenHeight * 0.05),
                      child: const Text(
                        "Memories",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (var i = 0; i < data["image"].length; i++)
                            Container(
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
                              margin: EdgeInsets.only(
                                  left: screenWidth * 0.025,
                                  top: screenHeight * 0.015),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(data['image'][i]),
                                      fit: BoxFit.cover)),
                            ),
                        ],
                      ),
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.025, top: screenHeight * 0.05),
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: const Text(
                          "Details",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: screenWidth * 0.025, top: 10),
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: Text(
                          "Text",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.025, top: screenHeight * 0.05),
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: const Text(
                          "Memories",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Shimmer.fromColors(
                            baseColor: Colors.grey[300]!,
                            highlightColor: Colors.grey[100]!,
                            child: Container(
                              height: screenHeight * 0.25,
                              width: screenWidth * 0.4,
                              margin: EdgeInsets.only(
                                  left: screenWidth * 0.025,
                                  top: screenHeight * 0.015),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      image: AssetImage("images/memories.png"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          // Repeat the same for the other Container widgets
                        ],
                      ),
                    ),
                  ],
                ),
        ));
  }
}
