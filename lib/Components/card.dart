import 'package:flutter/material.dart';

class card extends StatelessWidget {
  final bool isPast;
  final bool isFirst;
  final bool isLast;
  card({
    super.key,
    required this.isPast,
    required this.isFirst,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: isFirst? const  LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(4, 195, 255, 1),
                Color.fromRGBO(4, 195, 255, 0.5),
              ]
          ) : const  LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(142, 142, 142, 1),
                Color.fromRGBO(142, 142, 142, 0.95),
              ]
          ) 
      ),
      child: const Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Opening The Nursery",
                style: TextStyle(
                    color: Colors.white, fontSize: 15, fontFamily: "Poppins"),
              ),
              Spacer(),
              Text(
                "7:00",
                style: TextStyle(
                    color: Colors.white, fontSize: 13, fontFamily: "Poppins"),
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
