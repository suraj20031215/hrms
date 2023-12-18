import 'package:flutter/material.dart';

import 'addbonus.dart';

class BonusList extends StatefulWidget {
  const BonusList({super.key});

  @override
  State<BonusList> createState() => _BonusListState();
}

class _BonusListState extends State<BonusList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.blue[700],
        appBar: AppBar(
          title: const Text('Bonus List'),
          backgroundColor: Colors.blue[700],
          foregroundColor: Colors.white,

        ),

        floatingActionButton: FloatingActionButton(

          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80))),
          onPressed: () {

            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddBonus()));
          },
          backgroundColor: Colors.blue.shade300,
          child: Icon(Icons.add,color: Colors.white,),),
        body: Container(
            margin: const EdgeInsets.only(top: 20),
            height: double.infinity,
            width: double.infinity,
            decoration:  const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40))),
            child:Center(
              child: Image.asset('assets/images/img_2.png'),
            )
        )
    );
  }
}
