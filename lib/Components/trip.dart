import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nursery/tripDesc.dart';

class tripcard extends StatelessWidget {
  String title;
  var rating;
  String picture;
  tripcard({
    required this.title,
    required this.picture,
    required this.rating,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.4,
      width: screenWidth * 0.42,
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: screenHeight * 0.3,
              width: screenWidth * 0.42,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(picture),
                      fit: BoxFit.cover)),
              child: ElevatedButton(
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tripDesc(title:title)))
                },
                style: ButtonStyle(
                  elevation:
                      MaterialStateProperty.all<double>(0), // Remove elevation
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                ),
                child: null,
              )),
          Text(
            title,
            style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 15,
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(left: 0),
              child: const Row(
                children: [
                  Icon(
                    Icons.star_rounded,
                    size: 20,
                    color: Color.fromRGBO(250, 191, 53, 1),
                  ),
                  Icon(
                    Icons.star_rounded,
                    size: 20,
                    color: Color.fromRGBO(250, 191, 53, 1),
                  ),
                  Icon(
                    Icons.star_rounded,
                    size: 20,
                    color: Color.fromRGBO(250, 191, 53, 1),
                  ),
                  Icon(
                    Icons.star_rounded,
                    size: 20,
                    color: Color.fromRGBO(250, 191, 53, 1),
                  ),
                  Icon(
                    Icons.star_rounded,
                    size: 20,
                    color: Color.fromRGBO(232, 232, 232, 1),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
