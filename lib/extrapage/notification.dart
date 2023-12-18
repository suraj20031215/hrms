

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.blue[700],
        appBar: AppBar(
          title: const Text('Notification'),
          backgroundColor: Colors.blue[700],
          foregroundColor: Colors.white,

        ),

        body: Container(
            margin: const EdgeInsets.only(top: 20),
            height: double.infinity,
            width: double.infinity,
            decoration:  const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40))),
          child:
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20,left:10,right: 10),
                    child: Card(
                      color: Colors.blue[100],
                      child: ListTile(
                        title: Text('Leave Request',textScaleFactor: 1.1,style: TextStyle(fontWeight: FontWeight.w600),),
                        leading: CircleAvatar(backgroundImage: AssetImage('assets/images/emp.png')),
                        subtitle: const Text('Suraj Kumar send Request for leave',textScaleFactor: 0.9,style: TextStyle(color: Colors.black54),),
                        trailing: Icon(Icons.cancel_outlined)
                      ),
                    ),
                  );
                },
              )




        )

    );
  }
}
