import 'package:flutter/material.dart';
import 'package:nursery/nav.dart';

class Mykid extends StatefulWidget {
  const Mykid({super.key});

  @override
  State<Mykid> createState() => _MykidState();
}

class _MykidState extends State<Mykid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Nav(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            const SizedBox(width: 20),
            const Text(
              "My Kid",
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
              
            ],
          ),
        )
      );
  }
}