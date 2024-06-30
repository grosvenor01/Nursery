import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nursery/nav.dart';
import 'package:nursery/success.dart';

class Addchild extends StatefulWidget {
  const Addchild({super.key});

  @override
  State<Addchild> createState() => _AddchildState();
}

class _AddchildState extends State<Addchild> {
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
              "My Child",
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
              SizedBox(height: screenHeight*0.05),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.05),
                child: const Text(
                  "Full name",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "LilitaOne",
                    fontSize: 20
                  ),
                ),
              ),
              Container(
                height: screenHeight*0.08,
                width: screenWidth*0.9,
                margin: EdgeInsets.only(left: screenWidth*0.05),
                padding: EdgeInsets.only(left: 10 , top: screenHeight*0.01),
                decoration:  BoxDecoration(
                  color: const Color.fromRGBO(217, 217, 217, 0.5),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Child Name",
                    hintStyle: TextStyle(
                      fontSize: 15 , 
                      fontFamily: "Poppins",
                      color: Color.fromRGBO(142, 142, 142, 1)
                    ),
                  ),
                ),

              ),
              SizedBox(height: screenHeight*0.03),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.05),
                child: const Text(
                  "Age",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "LilitaOne",
                    fontSize: 20
                  ),
                ),
              ),
              Container(
                height: screenHeight*0.08,
                width: screenWidth*0.9,
                margin: EdgeInsets.only(left: screenWidth*0.05),
                padding: EdgeInsets.only(left: 10 , top: screenHeight*0.01),
                decoration:  BoxDecoration(
                  color: const Color.fromRGBO(217, 217, 217, 0.5),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "example : 24 months",
                    hintStyle: TextStyle(
                      fontSize: 15 , 
                      fontFamily: "Poppins",
                      color: Color.fromRGBO(142, 142, 142, 1)
                    ),
                  ),
                ),

              ),
              SizedBox(height: screenHeight*0.03),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.05),
                child: const Text(
                  "Gender",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "LilitaOne",
                    fontSize: 20
                  ),
                ),
              ),
              Container(
                height: screenHeight*0.08,
                width: screenWidth*0.9,
                margin: EdgeInsets.only(left: screenWidth*0.05),
                padding: EdgeInsets.only(left: 10 , top: screenHeight*0.01),
                decoration:  BoxDecoration(
                  color: const Color.fromRGBO(217, 217, 217, 0.5),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Gender of child",
                    hintStyle: TextStyle(
                      fontSize: 15 , 
                      fontFamily: "Poppins",
                      color: Color.fromRGBO(142, 142, 142, 1)
                    ),
                  ),
                ),

              ),
              SizedBox(height: screenHeight*0.03),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.05),
                child: const Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "LilitaOne",
                    fontSize: 20
                  ),
                ),
              ),
              Container(
                height: screenHeight*0.08,
                width: screenWidth*0.9,
                margin: EdgeInsets.only(left: screenWidth*0.05),
                padding: EdgeInsets.only(left: 10 , top: screenHeight*0.01),
                decoration:  BoxDecoration(
                  color: const Color.fromRGBO(217, 217, 217, 0.5),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Test@gmail.com",
                    hintStyle: TextStyle(
                      fontSize: 15 , 
                      fontFamily: "Poppins",
                      color: Color.fromRGBO(142, 142, 142, 1)
                    ),
                  ),
                ),

              ),
              SizedBox(height: screenHeight*0.03),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.05),
                child: const Text(
                  "Phone Number",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "LilitaOne",
                    fontSize: 20
                  ),
                ),
              ),
              Container(
                height: screenHeight*0.08,
                width: screenWidth*0.9,
                margin: EdgeInsets.only(left: screenWidth*0.05),
                padding: EdgeInsets.only(left: 10 , top: screenHeight*0.01),
                decoration:  BoxDecoration(
                  color: const Color.fromRGBO(217, 217, 217, 0.5),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "+213",
                    hintStyle: TextStyle(
                      fontSize: 15 , 
                      fontFamily: "Poppins",
                      color: Color.fromRGBO(142, 142, 142, 1)
                    ),
                  ),
                ),

              ),
              SizedBox(height: screenHeight*0.03),
              Container(
                
                height: screenHeight*0.05,
                width: screenWidth*0.9,
                
                margin: EdgeInsets.only(left: screenWidth*0.05),
                child: ElevatedButton(
                  onPressed: ()=>{
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context)=> Success())
                    )
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(4, 195, 255, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  child: const Text(
                    "Add Your Child ",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.white,
                      fontSize: 15
                    ),
                  )
                ),
              )
            ],
          ),
        )
      );
  }
}
