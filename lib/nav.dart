import 'package:flutter/material.dart';
import 'package:nursery/Activity.dart';
import 'package:nursery/addChild.dart';
import 'package:nursery/home.dart';
import 'package:nursery/schedules.dart';
import 'package:nursery/trips.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Drawer(
            child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                Container(
                  height: screenWidth * 0.16,
                  width: screenWidth * 0.16,
                  margin: EdgeInsets.only(left: 3),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("images/profile.png"),
                          fit: BoxFit.cover)),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 3),
                      child: const Text(
                        "Saidi \nAbdelkader",
                        style: TextStyle(
                            fontFamily: "LilitaOne",
                            fontSize: 25,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                    height: screenWidth * 0.1,
                    width: screenWidth * 0.1,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: Builder(builder: (context) {
                      return IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: screenWidth * 0.05,
                        ),
                        onPressed: () => {Scaffold.of(context).closeDrawer()},
                      );
                    })),
                SizedBox(
                  width: screenWidth * 0.05,
                )
              ],
            ),
            SizedBox(height: screenHeight * 0.1),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>const home())
                )
              },
              style: ButtonStyle(
                elevation:
                    WidgetStateProperty.all(0), // Remove the button elevation
                overlayColor: WidgetStateProperty.all(
                    Colors.transparent), // Disable the hover effect
                foregroundColor: WidgetStateProperty.all(Colors
                    .transparent), // Set the button text color to transparent
                backgroundColor: WidgetStateProperty.all(Colors
                    .transparent), // Set the button background color to transparent
                padding: WidgetStateProperty.all(
                    EdgeInsets.zero), // Remove the button padding
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.zero, // Remove the button rounded corners
                  ),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  const Icon(
                    Icons.home,
                    color: Colors.grey,
                    size: 35,
                  ),
                  SizedBox(width: screenWidth * 0.1),
                  const Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=> const Schedules())
                )
              },
              style: ButtonStyle(
                elevation:
                    WidgetStateProperty.all(0), // Remove the button elevation
                overlayColor: WidgetStateProperty.all(
                    Colors.transparent), // Disable the hover effect
                foregroundColor: WidgetStateProperty.all(Colors
                    .transparent), // Set the button text color to transparent
                backgroundColor: WidgetStateProperty.all(Colors
                    .transparent), // Set the button background color to transparent
                padding: WidgetStateProperty.all(
                    EdgeInsets.zero), // Remove the button padding
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.zero, // Remove the button rounded corners
                  ),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  const Icon(
                    Icons.schedule_sharp,
                    color: Colors.grey,
                    size: 35,
                  ),
                  SizedBox(width: screenWidth * 0.1),
                  const Text(
                    "Schedules",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>const Activity())
                )
              },
              style: ButtonStyle(
                elevation:
                    WidgetStateProperty.all(0), // Remove the button elevation
                overlayColor: WidgetStateProperty.all(
                    Colors.transparent), // Disable the hover effect
                foregroundColor: WidgetStateProperty.all(Colors
                    .transparent), // Set the button text color to transparent
                backgroundColor: WidgetStateProperty.all(Colors
                    .transparent), // Set the button background color to transparent
                padding: WidgetStateProperty.all(
                    EdgeInsets.zero), // Remove the button padding
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.zero, // Remove the button rounded corners
                  ),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  const Icon(
                    Icons.sports_basketball_outlined,
                    color: Colors.grey,
                    size: 35,
                  ),
                  SizedBox(width: screenWidth * 0.1),
                  const Text(
                    "Activities",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>const Trips())
                )
              },
              style: ButtonStyle(
                elevation:
                    WidgetStateProperty.all(0), // Remove the button elevation
                overlayColor: WidgetStateProperty.all(
                    Colors.transparent), // Disable the hover effect
                foregroundColor: WidgetStateProperty.all(Colors
                    .transparent), // Set the button text color to transparent
                backgroundColor: WidgetStateProperty.all(Colors
                    .transparent), // Set the button background color to transparent
                padding: WidgetStateProperty.all(
                    EdgeInsets.zero), // Remove the button padding
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.zero, // Remove the button rounded corners
                  ),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  const Icon(
                    Icons.directions_bus_filled_outlined,
                    color: Colors.grey,
                    size: 35,
                  ),
                  SizedBox(width: screenWidth * 0.1),
                  const Text(
                    "Trips",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>const Addchild())
                )
              },
              style: ButtonStyle(
                elevation:
                    WidgetStateProperty.all(0), // Remove the button elevation
                overlayColor: WidgetStateProperty.all(
                    Colors.transparent), // Disable the hover effect
                foregroundColor: WidgetStateProperty.all(Colors
                    .transparent), // Set the button text color to transparent
                backgroundColor: WidgetStateProperty.all(Colors
                    .transparent), // Set the button background color to transparent
                padding: WidgetStateProperty.all(
                    EdgeInsets.zero), // Remove the button padding
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.zero, // Remove the button rounded corners
                  ),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  const Icon(
                    Icons.add_box_outlined,
                    color: Colors.grey,
                    size: 35,
                  ),
                  SizedBox(width: screenWidth * 0.1),
                  const Text(
                    "Add Child",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            
          ],
        ));
  }
}