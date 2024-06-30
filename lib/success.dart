import 'package:flutter/material.dart';
import 'package:nursery/MyKid.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Well Done",
            style: TextStyle(
                fontFamily: "LilitaOne",
                fontSize: screenWidth * 0.13,
                color: Colors.black),
          ),
          SizedBox(height: screenHeight*0.1),
          Text(
            "A call will be received in minutes to confirm your  forms",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: screenWidth * 0.05,
                color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: screenHeight*0.1),
          Container(
            height: screenWidth * 0.3,
            width: screenWidth * 0.3,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("images/sucess.png"), fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: screenHeight*0.2),
          Container(
            height: screenHeight * 0.08,
            width: screenWidth * 0.9,
            child: ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>const Mykid())
                )
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(4, 195, 255, 1),
              ),
              child: const Text(
                "OK",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
