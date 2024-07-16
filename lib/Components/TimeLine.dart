import 'package:flutter/material.dart';
import 'package:nursery/Components/card.dart';
import 'package:timeline_tile/timeline_tile.dart';

class timeLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final String title;
  final String description;
  final String time;
  const timeLineTile({
    required this.isFirst,
    required this.isLast,
    required this.isPast, 
    required this.title,
    required this.description,
    required this.time,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: screenWidth * 0.05),
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: const LineStyle(
            color: Color.fromRGBO(4, 195, 255, 1), thickness: 1),
        indicatorStyle: const IndicatorStyle(
          color: Color.fromRGBO(4, 195, 255, 1),
          width: 20,
        ),
        endChild: card(isFirst: isFirst, isLast: false, isPast: false, description :description, title :title, time : time),
      ),
    );
  }
}
