import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nursery/nav.dart';
import 'package:nursery/success.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Addchild extends StatefulWidget {
  const Addchild({super.key});

  @override
  State<Addchild> createState() => _AddchildState();
}

class _AddchildState extends State<Addchild> {
  var Fullname = "";
  var Age;
  var email="";
  var phoneNumber="";
  var gender="";
  var _errorEmail = '', _errorAge = '';
  var emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    CollectionReference collection =
        FirebaseFirestore.instance.collection("Children");
    Future<void> addchild(name, email, age, gender, phoneNumber) {
      return collection
          .add({
            "name": name,
            "email": email,
            "age": age,
            "gender": gender,
            "phoneNumber": phoneNumber
          })
          .then((value) => print("Child Added"))
          .catchError((error) => print("Error occured" + error));
    }

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
              SizedBox(height: screenHeight * 0.05),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.05),
                child: const Text(
                  "Full name",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "LilitaOne",
                      fontSize: 20),
                ),
              ),
              Container(
                height: screenHeight * 0.08,
                width: screenWidth * 0.9,
                margin: EdgeInsets.only(left: screenWidth * 0.05),
                padding: EdgeInsets.only(left: 10, top: screenHeight * 0.01),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(217, 217, 217, 0.5),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      Fullname = value;
                    });
                    print(Fullname);
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Child Name",
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontFamily: "Poppins",
                        color: Color.fromRGBO(142, 142, 142, 1)),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.05),
                child: const Text(
                  "Age",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "LilitaOne",
                      fontSize: 20),
                ),
              ),
              Container(
                height: screenHeight * 0.08,
                width: screenWidth * 0.9,
                margin: EdgeInsets.only(left: screenWidth * 0.05),
                padding: EdgeInsets.only(left: 10, top: screenHeight * 0.01),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(217, 217, 217, 0.5),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      if ( !RegExp(r'^[a-z]+$').hasMatch(value) && int.parse(value) > 0 ) {
                        Age = int.parse(value);
                        _errorAge = '';
                      }
                      else {
                        _errorAge = 'Please Enter A Valid Age in Months';
                      }
                    });
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "example : 24 months",
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontFamily: "Poppins",
                        color: Color.fromRGBO(142, 142, 142, 1)),
                  ),
                ),
              ),
              if (_errorAge.isNotEmpty)
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.05),
                  child: Text(
                    _errorAge,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.05),
                child: const Text(
                  "Gender",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "LilitaOne",
                      fontSize: 20),
                ),
              ),
              Container(
                height: screenHeight * 0.08,
                width: screenWidth * 0.9,
                margin: EdgeInsets.only(left: screenWidth * 0.05),
                padding: EdgeInsets.only(left: 10, top: screenHeight * 0.01),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(217, 217, 217, 0.5),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Gender of child",
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontFamily: "Poppins",
                        color: Color.fromRGBO(142, 142, 142, 1)),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.05),
                child: const Text(
                  "Email",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "LilitaOne",
                      fontSize: 20),
                ),
              ),
              Container(
                height: screenHeight * 0.08,
                width: screenWidth * 0.9,
                margin: EdgeInsets.only(left: screenWidth * 0.05),
                padding: EdgeInsets.only(left: 10, top: screenHeight * 0.01),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(217, 217, 217, 0.5),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      if (emailRegex.hasMatch(value)) {
                        email = value;
                        _errorEmail = '';
                      } else {
                        _errorEmail = "Please unter a valid email";
                      }
                    });
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Test@gmail.com",
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontFamily: "Poppins",
                        color: Color.fromRGBO(142, 142, 142, 1)),
                  ),
                ),
              ),
              if (_errorEmail.isNotEmpty)
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.05),
                  child: const Text(
                    "The Email Is Not Allowed",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.05),
                child: const Text(
                  "Phone Number",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "LilitaOne",
                      fontSize: 20),
                ),
              ),
              Container(
                height: screenHeight * 0.08,
                width: screenWidth * 0.9,
                margin: EdgeInsets.only(left: screenWidth * 0.05),
                padding: EdgeInsets.only(left: 10, top: screenHeight * 0.01),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(217, 217, 217, 0.5),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      phoneNumber = value;
                    });
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "+213",
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontFamily: "Poppins",
                        color: Color.fromRGBO(142, 142, 142, 1)),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Container(
                height: screenHeight * 0.05,
                width: screenWidth * 0.9,
                margin: EdgeInsets.only(left: screenWidth * 0.05),
                child: ElevatedButton(
                    onPressed: () => {
                      
                      if(_errorAge.isEmpty && _errorEmail.isEmpty && Fullname.isNotEmpty && gender.isNotEmpty && phoneNumber.isNotEmpty){
                        addchild(Fullname, email, Age, gender, phoneNumber),
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Success())
                        )
                      }   
                        },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(4, 195, 255, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      "Add Your Child ",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.white,
                          fontSize: 15),
                    )),
              )
            ],
          ),
        ));
  }
}
