import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Timelisnehoriz extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  const Timelisnehoriz({
    required this.isFirst,
    required this.isLast,
    required this.isPast, 
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
        axis: TimelineAxis.horizontal,
        beforeLineStyle: const LineStyle(
            color: Color.fromRGBO(4, 195, 255, 1), thickness: 1),
        indicatorStyle: const IndicatorStyle(
          color: Color.fromRGBO(4, 195, 255, 1),
          width: 20,
        ),
        
        endChild:Text("dady chikour denya "),
      ),
    );
  }
}
