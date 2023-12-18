import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[700],
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        title: const Text('Profile'),
        actions: [
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(color: Colors.blue[400],borderRadius:BorderRadius.all(Radius.circular(7))),
margin: EdgeInsets.only(right: 20),
              child:Row(
              children: [
                Icon(Icons.edit),

                 Text('Edit',textScaleFactor:1.1,)
              ],
            )),

        ],
      ),

      body: Container(
          margin: const EdgeInsets.only(top: 20),
          height: double.infinity,
          width: double.infinity,
          decoration:  const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40))),
         child:  Column(
           children: [
             SizedBox(height: 20,),
Container(
  decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black),
  width: 140,
  height: 140,
  child:   Lottie.asset('assets/lottie/profile.json'),

),
             Container(
               height: 60,
               // padding: const EdgeInsets.all(8),
               margin: const EdgeInsets.only(left:10,right: 10,top: 30),
               decoration:  BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(5),
                 boxShadow: [
                   BoxShadow(
                     color:Colors.black.withOpacity(1.0),
                     spreadRadius: 0.0,
                     blurRadius: 1,
                     // changes position of shadow
                   ),
                 ],),
             child: ListTile(title: Text('Suraj Kumar'),
             leading: Icon(Icons.perm_identity_outlined)),
             ),
             Container(
               height: 60,
               // padding: const EdgeInsets.all(8),
               margin: const EdgeInsets.only(left:10,right: 10,top: 20),
               decoration:  BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(5),
                 boxShadow: [
                   BoxShadow(
                     color:Colors.black.withOpacity(1.0),
                     spreadRadius: 0.0,
                     blurRadius: 1,
                     // changes position of shadow
                   ),
                 ],),
               child: ListTile(title: Text('suraj@example.com'),
                   leading: Icon(Icons.email_outlined)),
             ),
             Container(
               height: 60,
               // padding: const EdgeInsets.all(8),
               margin: const EdgeInsets.only(left:10,right: 10,top: 20),
               decoration:  BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(5),
                 boxShadow: [
                   BoxShadow(
                     color:Colors.black.withOpacity(1.0),
                     spreadRadius: 0.0,
                     blurRadius: 1,
                     // changes position of shadow
                   ),
                 ],),
               child: ListTile(title: Text('+91 0000011123'),
                   leading: Icon(Icons.phone_android)),
             ),
             Container(
               height: 60,
               // padding: const EdgeInsets.all(8),
               margin: const EdgeInsets.only(left:10,right: 10,top: 20),
               decoration:  BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(5),
                 boxShadow: [
                   BoxShadow(
                     color:Colors.black.withOpacity(1.0),
                     spreadRadius: 0.0,
                     blurRadius: 1,
                     // changes position of shadow
                   ),
                 ],),
               child: ListTile(title: Text('xyz Tech'),
                   leading: Icon(Icons.factory_outlined)),
             ),

           ],
         ),

      )
    );
  }
}
