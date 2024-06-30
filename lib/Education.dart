import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nursery/nav.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
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
              "Education",
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
            Container(
              height: screenWidth * 0.7,
              width: screenWidth * 0.7,
              margin: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.15,
                  vertical: screenHeight * 0.05),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/education.png"),
                      fit: BoxFit.contain)),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.05),
              child: const Text(
                "Education Info",
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
            Container(
              height: screenHeight * 0.13,
              width: screenWidth * 0.90,
              margin: EdgeInsets.only(left: screenWidth * 0.05, top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(142, 142, 142, 0.1)
              ),
              child: Row(children: [
                const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Module1 : French",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do ",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Poppins",
                              fontSize: 13),
                        ),
                      )
                    ]),
                Spacer(),
                SizedBox(
                  height: screenWidth * 0.13,
                  width: screenWidth*0.13,
                  child: Stack(
                    children: [
                      Container(
                        height: screenWidth * 0.13,
                        width: screenWidth * 0.13,
                        
                        child: const CircularProgressIndicator(
                          backgroundColor: Color.fromRGBO(142, 142, 142, 0.6),
                          color: Color.fromRGBO(4, 195, 255, 0.8),
                          value: 0.3,
                          strokeWidth: 5,
                        ),
                      ),
                      Center(child: Text("30%" , style: TextStyle(fontFamily: "Poppins", fontSize: 13),)),
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                
              ]),
            ),
            Container(
              height: screenHeight * 0.13,
              width: screenWidth * 0.90,
              margin: EdgeInsets.only(left: screenWidth * 0.05, top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(142, 142, 142, 0.1)
              ),
              child: Row(children: [
                const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Module1 : French",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do ",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Poppins",
                              fontSize: 13),
                        ),
                      )
                    ]),
                Spacer(),
                SizedBox(
                  height: screenWidth * 0.13,
                  width: screenWidth*0.13,
                  child: Stack(
                    children: [
                      Container(
                        height: screenWidth * 0.13,
                        width: screenWidth * 0.13,
                        
                        child: const CircularProgressIndicator(
                          backgroundColor: Color.fromRGBO(142, 142, 142, 0.6),
                          color: Color.fromRGBO(4, 195, 255, 0.8),
                          value: 0.3,
                          strokeWidth: 5,
                        ),
                      ),
                      Center(child: Text("30%" , style: TextStyle(fontFamily: "Poppins", fontSize: 13),)),
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                
              ]),
            ),
            Container(
              height: screenHeight * 0.13,
              width: screenWidth * 0.90,
              margin: EdgeInsets.only(left: screenWidth * 0.05, top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(142, 142, 142, 0.1)
              ),
              child: Row(children: [
                const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Module1 : French",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do ",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Poppins",
                              fontSize: 13),
                        ),
                      )
                    ]),
                Spacer(),
                SizedBox(
                  height: screenWidth * 0.13,
                  width: screenWidth*0.13,
                  child: Stack(
                    children: [
                      Container(
                        height: screenWidth * 0.13,
                        width: screenWidth * 0.13,
                        
                        child: const CircularProgressIndicator(
                          backgroundColor: Color.fromRGBO(142, 142, 142, 0.6),
                          color: Color.fromRGBO(4, 195, 255, 0.8),
                          value: 0.3,
                          strokeWidth: 5,
                        ),
                      ),
                      Center(child: Text("30%" , style: TextStyle(fontFamily: "Poppins", fontSize: 13),)),
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                
              ]),
            ),
            SizedBox(height: 20,),
          ],
        )));
  }
}
