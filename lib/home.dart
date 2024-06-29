import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: Drawer(
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
              onPressed: () => {},
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
              onPressed: () => {},
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
              onPressed: () => {},
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
              onPressed: () => {},
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
                    Icons.book_outlined,
                    color: Colors.grey,
                    size: 35,
                  ),
                  SizedBox(width: screenWidth * 0.1),
                  const Text(
                    "Education",
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
              onPressed: () => {},
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
              onPressed: () => {},
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
            ElevatedButton(
              onPressed: () => {},
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
                    Icons.logout,
                    color: Colors.grey,
                    size: 35,
                  ),
                  SizedBox(width: screenWidth * 0.1),
                  const Text(
                    "Log out",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        )),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            const SizedBox(width: 20),
            const Text(
              "My Home",
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: screenHeight * 0.27,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: screenHeight * 0.2,
                      width: screenWidth * 0.95,
                      margin: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.025, vertical: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 20,
                              offset: Offset(4, 5),
                            )
                          ],
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(4, 195, 255, 1),
                                Color.fromRGBO(4, 195, 255, 0.5),
                              ]),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Nurturing Growth,\n Together",
                                  style: TextStyle(
                                      fontFamily: "LilitaOne",
                                      fontSize: screenWidth * 0.06,
                                      color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 31,
                                width: 160,
                                child: ElevatedButton(
                                    onPressed: () => {},
                                    child: const Text(
                                      "Join Revo Now",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    )),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: screenWidth * 0.6,
                      child: Container(
                        height: screenHeight * 0.26,
                        width: screenWidth * 0.35,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/kid.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.025),
                child: const Text(
                  "Our Services",
                  style: TextStyle(
                      fontFamily: "Poppins", fontSize: 20, color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.025),
                child: const Text(
                  "As a nursery we provide this set of services ",
                  style: TextStyle(
                      color: Color.fromRGBO(142, 142, 142, 0.7),
                      fontFamily: "Poppins",
                      fontSize: 13),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: screenWidth * 0.18,
                        width: screenWidth * 0.18,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(4, 195, 255, 0.3)),
                        child: const Center(
                            child: Icon(
                          Icons.sports_basketball,
                          color: Color.fromRGBO(4, 195, 255, 1),
                          size: 40,
                        )),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "Activities",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 13,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: screenWidth * 0.18,
                        width: screenWidth * 0.18,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(4, 195, 255, 0.3)),
                        child: const Center(
                            child: Icon(
                          Icons.menu_book_rounded,
                          color: Color.fromRGBO(4, 195, 255, 1),
                          size: 40,
                        )),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "Education",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 13,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: screenWidth * 0.18,
                        width: screenWidth * 0.18,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(4, 195, 255, 0.3)),
                        child: const Center(
                            child: Icon(
                          Icons.phone_iphone_rounded,
                          color: Color.fromRGBO(4, 195, 255, 1),
                          size: 40,
                        )),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "Monitoring",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 13,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: screenWidth * 0.18,
                        width: screenWidth * 0.18,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(4, 195, 255, 0.3)),
                        child: const Center(
                            child: Icon(
                          Icons.terrain_sharp,
                          color: Color.fromRGBO(4, 195, 255, 1),
                          size: 40,
                        )),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "Trips",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 13,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.025),
                    child: const Text(
                      "Top Activities",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                  Spacer(),
                  const Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromRGBO(4, 195, 255, 1)),
                  ),
                  SizedBox(
                    width: screenWidth * 0.025,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.025),
                child: const Text(
                  "Activity for different age level and adapted to \nunderstanding system of our kids  ",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 13,
                      color: Color.fromRGBO(142, 142, 142, 0.7)),
                ),
              ),
              Container(
                height: screenHeight * 0.15,
                width: screenWidth * 0.95,
                margin: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.025, vertical: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: screenHeight * 0.14,
                        width: screenWidth * 0.25,
                        margin: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("images/activity.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      const Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Drawing & Coloring",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 15,
                                color: Colors.black),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "For Kids in age between \n2-5 years old \nTime:1 hour per day",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 13,
                                  color: Color.fromRGBO(142, 142, 142, 0.7)),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                      Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      )
                    ]),
              ),
              Container(
                height: screenHeight * 0.15,
                width: screenWidth * 0.95,
                margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: screenHeight * 0.14,
                        width: screenWidth * 0.25,
                        margin: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("images/activity.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      const Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Drawing & Coloring",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 15,
                                color: Colors.black),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "For Kids in age between \n2-5 years old \nTime:1 hour per day",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 13,
                                  color: Color.fromRGBO(142, 142, 142, 0.7)),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                      Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      )
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.025, top: 30),
                child: const Text(
                  "FeedBack & Reviews",
                  style: TextStyle(
                      fontFamily: "Poppins", fontSize: 20, color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.025),
                child: const Text(
                  "Here is some of our clients’s feedbacks about\nus and the services we ive",
                  style: TextStyle(
                      color: Color.fromRGBO(142, 142, 142, 0.7),
                      fontFamily: "Poppins",
                      fontSize: 13),
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
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}
