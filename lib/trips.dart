import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nursery/Components/trip.dart';
import 'package:nursery/MyKid.dart';
import 'package:nursery/nav.dart';

class Trips extends StatefulWidget {
  const Trips({super.key});

  @override
  State<Trips> createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  var data = [];
  getTrips() async {
    QuerySnapshot query =
        await FirebaseFirestore.instance.collection("Trips").get();
    data.addAll(query.docs);
    setState(() {});
  }

  @override
  void initState() {
    getTrips();
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
              "Trips",
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
            Container(
              height: screenWidth * 0.7,
              width: screenWidth * 0.7,
              margin: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.15,
                  vertical: screenHeight * 0.05),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/trip.png"),
                      fit: BoxFit.contain)),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.05),
              child: const Text(
                "Our Last Trips",
                style: TextStyle(
                    fontSize: 20, fontFamily: "Poppins", color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.05),
              child: const Text(
                "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod ",
                style: TextStyle(
                    fontSize: 15, fontFamily: "Poppins", color: Colors.grey),
              ),
            ),
            if (data.length > 1)
              for (var i = 0; i < data.length % 2; i += 2)
                Row(
                  children: [
                    SizedBox(width: screenWidth * 0.05),
                    tripcard(
                        title: data[i]["Title"],
                        picture: data[i]["picture"],
                        rating: data[i]["rating"]),
                    Spacer(),
                    tripcard(
                        title: data[i + 1]["Title"],
                        picture: data[i + 1]["picture"],
                        rating: data[i + 1]["rating"]),
                    SizedBox(width: screenWidth * 0.05),
                  ],
                ),
            if (data.length % 2 == 1)
              Row(
                children: [
                  SizedBox(width: screenWidth * 0.05),
                  tripcard(
                      title: data[data.length - 1]["Title"],
                      picture: data[data.length - 1]["picture"],
                      rating: data[data.length - 1]["rating"]),
                  Spacer(),
                ],
              )
          ],
        )));
  }
}
