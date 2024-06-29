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
          child : Column(
            children: [
              Container(
                height: screenWidth*0.7,
                width: screenWidth*0.7,
                margin: EdgeInsets.symmetric(horizontal: screenWidth*0.15 , vertical: screenHeight*0.05),
                decoration: const BoxDecoration(
                  image:DecorationImage(
                    image: AssetImage("images/education.png"),
                    fit: BoxFit.contain
                  ) 
                ),
              ),
              Container(
                height: screenHeight*0.15,
                width: screenWidth*0.90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black)

                ),
                child: const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Module1 : French",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontSize: 15
                          ),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Poppins",
                            fontSize: 13
                          ),
                        )
                      ]
                      
                    ),
                    
                    CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                      color: Color.fromRGBO(4, 195, 255, 1),
                      value: 0.3,
                      strokeWidth: 5,
                    )
                  ],
                ),
              )
            ],
          )
        )
      );
  }
}
