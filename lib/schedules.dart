import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nursery/Components/TimeLine.dart';
import 'package:nursery/Components/notif.dart';
import 'package:nursery/nav.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class Schedules extends StatefulWidget {
  const Schedules({super.key});

  @override
  State<Schedules> createState() => _SchedulesState();
}

class _SchedulesState extends State<Schedules> {
  var data;
  var formattedDate;
  var day = 1;
  var _isLoading, _isNull = false;
  getschedule() async {
    _isNull = false;
    _isLoading = true;
    CollectionReference collection =
        FirebaseFirestore.instance.collection("Schedules");
    QuerySnapshot query = await collection.where("day", isEqualTo: day).get();
    if (query.size == 0) {
      _isLoading = false;
      _isNull = true;
      setState(() {});
    } else {
      QuerySnapshot query = await collection.where("day", isEqualTo: day).get();
      data = query.docs[0].data();
      _isLoading = false;
      setState(() {});
    }
  }

  @override
  void initState() {
    getschedule();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Nav(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          const SizedBox(width: 20),
          const Text(
            "Schedules",
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
      body: !_isLoading
          ? SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  day = 1;
                                  getschedule();
                                })
                              },
                          style: ButtonStyle(
                            elevation: WidgetStateProperty.all(0),
                            overlayColor:
                                WidgetStateProperty.all(Colors.transparent),
                            foregroundColor:
                                WidgetStateProperty.all(Colors.transparent),
                            backgroundColor:
                                WidgetStateProperty.all(Colors.transparent),
                            padding: WidgetStateProperty.all(EdgeInsets.zero),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero),
                            ),
                          ),
                          child: const Column(
                            children: [
                              Text(
                                "01",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Poppins",
                                    fontSize: 20),
                              ),
                              Text(
                                "Mon",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Poppins",
                                    fontSize: 20),
                              )
                            ],
                          )),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  day = 2;
                                  getschedule();
                                })
                              },
                          style: ButtonStyle(
                            elevation: WidgetStateProperty.all(0),
                            overlayColor:
                                WidgetStateProperty.all(Colors.transparent),
                            foregroundColor:
                                WidgetStateProperty.all(Colors.transparent),
                            backgroundColor:
                                WidgetStateProperty.all(Colors.transparent),
                            padding: WidgetStateProperty.all(EdgeInsets.zero),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero),
                            ),
                          ),
                          child: const Column(
                            children: [
                              Text(
                                "02",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Poppins",
                                    fontSize: 20),
                              ),
                              Text(
                                "Tue",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Poppins",
                                    fontSize: 20),
                              )
                            ],
                          )),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  day = 3;
                                  getschedule();
                                })
                              },
                          style: ButtonStyle(
                            elevation: WidgetStateProperty.all(0),
                            overlayColor:
                                WidgetStateProperty.all(Colors.transparent),
                            foregroundColor:
                                WidgetStateProperty.all(Colors.transparent),
                            backgroundColor:
                                WidgetStateProperty.all(Colors.transparent),
                            padding: WidgetStateProperty.all(EdgeInsets.zero),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero),
                            ),
                          ),
                          child: const Column(
                            children: [
                              Text(
                                "03",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Poppins",
                                    fontSize: 20),
                              ),
                              Text(
                                "Wed",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Poppins",
                                    fontSize: 20),
                              )
                            ],
                          )),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  day = 4;
                                  getschedule();
                                })
                              },
                          style: ButtonStyle(
                            elevation: WidgetStateProperty.all(0),
                            overlayColor:
                                WidgetStateProperty.all(Colors.transparent),
                            foregroundColor:
                                WidgetStateProperty.all(Colors.transparent),
                            backgroundColor:
                                WidgetStateProperty.all(Colors.transparent),
                            padding: WidgetStateProperty.all(EdgeInsets.zero),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero),
                            ),
                          ),
                          child: const Column(
                            children: [
                              Text(
                                "04",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Poppins",
                                    fontSize: 20),
                              ),
                              Text(
                                "Thu",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Poppins",
                                    fontSize: 20),
                              )
                            ],
                          )),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  day = 5;
                                  getschedule();
                                })
                              },
                          style: ButtonStyle(
                            elevation: WidgetStateProperty.all(0),
                            overlayColor:
                                WidgetStateProperty.all(Colors.transparent),
                            foregroundColor:
                                WidgetStateProperty.all(Colors.transparent),
                            backgroundColor:
                                WidgetStateProperty.all(Colors.transparent),
                            padding: WidgetStateProperty.all(EdgeInsets.zero),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero),
                            ),
                          ),
                          child: const Column(
                            children: [
                              Text(
                                "05",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Poppins",
                                    fontSize: 20),
                              ),
                              Text(
                                "Sat",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Poppins",
                                    fontSize: 20),
                              )
                            ],
                          )),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  day = 6;
                                  getschedule();
                                })
                              },
                          style: ButtonStyle(
                            elevation: WidgetStateProperty.all(0),
                            overlayColor:
                                WidgetStateProperty.all(Colors.transparent),
                            foregroundColor:
                                WidgetStateProperty.all(Colors.transparent),
                            backgroundColor:
                                WidgetStateProperty.all(Colors.transparent),
                            padding: WidgetStateProperty.all(EdgeInsets.zero),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero),
                            ),
                          ),
                          child: const Column(
                            children: [
                              Text(
                                "06",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Poppins",
                                    fontSize: 20),
                              ),
                              Text(
                                "Sun",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Poppins",
                                    fontSize: 20),
                              )
                            ],
                          )),
                      Spacer()
                    ],
                  ),
                  if (!_isNull)
                    for (var i = 0; i < data["programe"].length; i++)
                      timeLineTile(
                          isFirst: i == 0 ? true : false,
                          isLast: i == 2 ? true : false,
                          isPast: true,
                          description: data["programe"][i]["description"],
                          title: data["programe"][i]["Title"],
                          time: DateFormat("HH:mm").format(
                              DateTime.fromMillisecondsSinceEpoch(
                                  data["programe"][i]["start"].seconds *
                                      1000))),
                ],
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 5),
                      Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: ElevatedButton(
                          onPressed: () => {},
                          style: ButtonStyle(
                            elevation: WidgetStateProperty.all(0),
                            overlayColor:
                                WidgetStateProperty.all(Colors.transparent),
                            foregroundColor:
                                WidgetStateProperty.all(Colors.transparent),
                            backgroundColor:
                                WidgetStateProperty.all(Colors.transparent),
                            padding: WidgetStateProperty.all(EdgeInsets.zero),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                          child: const Column(
                            children: [
                              Text(
                                "01",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "Poppins",
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Mon",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "Poppins",
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: ElevatedButton(
                          onPressed: () => {},
                          style: ButtonStyle(
                            elevation: WidgetStateProperty.all(0),
                            overlayColor:
                                WidgetStateProperty.all(Colors.transparent),
                            foregroundColor:
                                WidgetStateProperty.all(Colors.transparent),
                            backgroundColor:
                                WidgetStateProperty.all(Colors.transparent),
                            padding: WidgetStateProperty.all(EdgeInsets.zero),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                          child: const Column(
                            children: [
                              Text(
                                "02",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "Poppins",
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Tue",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "Poppins",
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Repeat the Shimmer.fromColors for the remaining buttons
                      SizedBox(width: 5),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
