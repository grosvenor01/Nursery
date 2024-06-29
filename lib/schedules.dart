import 'package:flutter/material.dart';
import 'package:nursery/Components/TimeLine.dart';
import 'package:nursery/nav.dart';
import 'package:timeline_tile/timeline_tile.dart';
class Schedules extends StatefulWidget {
  const Schedules({super.key});

  @override
  State<Schedules> createState() => _SchedulesState();
}

class _SchedulesState extends State<Schedules> {
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
              "Schedules",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 5),
                  ElevatedButton(
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
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
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
                  ElevatedButton(
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
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
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
                  ElevatedButton(
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
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
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
                  ElevatedButton(
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
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
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
                  ElevatedButton(
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
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
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
                            "Fri",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Poppins",
                                fontSize: 20),
                          )
                        ],
                      )),
                  ElevatedButton(
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
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
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
                            "Sat",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Poppins",
                                fontSize: 20),
                          )
                        ],
                      )),
                  SizedBox(width: 5),
                ],
              ),
              timeLineTile(isFirst: true,  isLast:false , isPast: false,),
              timeLineTile(isFirst: false,  isLast:false , isPast: true,),
              timeLineTile(isFirst: false , isLast:false , isPast: true,),
              timeLineTile(isFirst: false , isLast:true , isPast: false,),
            ],
          ),
        ));
  }
}
