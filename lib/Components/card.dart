import 'package:flutter/material.dart';

class card extends StatelessWidget {
  final bool isPast;
  final bool isFirst;
  final bool isLast;
  final String title;
  final String description;
  final String time;
  card({
    super.key,
    required this.isPast,
    required this.isFirst,
    required this.isLast,
    required this.title,
    required this.description,
    required this.time
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: isFirst
              ? const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                      Color.fromRGBO(4, 195, 255, 1),
                      Color.fromRGBO(4, 195, 255, 0.5),
                    ])
              : const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                      Color.fromRGBO(142, 142, 142, 1),
                      Color.fromRGBO(142, 142, 142, 0.95),
                    ])),
      child: Column(
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
                title,
                style: TextStyle(
                    color: Colors.white, fontSize: 15, fontFamily: "Poppins"),
              ),
              Spacer(),
              Text(
                time,
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
              description,
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
