import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class notifs extends StatefulWidget {
  const notifs({super.key});
  @override
  State<notifs> createState() => _notifsState();
}


class _notifsState extends State<notifs> {
  var Notifs = [];
  var _GetNotifs = false;

  Future<void> getNotifications() async {
    Notifs = [];
    CollectionReference collection = FirebaseFirestore.instance.collection("Notification");
    QuerySnapshot snapshot = await collection.get();
    Notifs.addAll(snapshot.docs);
    _GetNotifs = true;
    setState(() {});
  }

  @override
  void initState() {
    getNotifications();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(
        Icons.notifications,
        color: Colors.grey,
        size: 27,
      ),
      onOpened: () async {
        Notifs = [];
        CollectionReference collection =
            FirebaseFirestore.instance.collection("Notification");
        QuerySnapshot snapshot = await collection.get();
        Notifs.addAll(snapshot.docs);
        _GetNotifs = true;
        setState(() {});
      },
      onCanceled: () {
        _GetNotifs = false;
        setState(() {});
      },
      itemBuilder: (context) => [
        for (var i in Notifs)
          PopupMenuItem(
            child: Container(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          i["Title"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        SizedBox(height: 3.0),
                        Text(
                          i["Content"],
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
