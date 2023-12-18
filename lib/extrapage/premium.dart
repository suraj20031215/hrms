import 'package:flutter/material.dart';

class PremiumVersion extends StatefulWidget {
  const PremiumVersion({super.key});

  @override
  State<PremiumVersion> createState() => _PremiumVersionState();
}

class _PremiumVersionState extends State<PremiumVersion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor:Colors.blue[700],
        appBar: AppBar(
        title: const Text('Premium Version'),
    backgroundColor: Colors.blue[700],
    foregroundColor: Colors.white,

    ),


    body:
    Container(
    margin: const EdgeInsets.only(top: 20),
    height: double.infinity,
    width: double.infinity,
    decoration:  BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40))),
   child: Column(children: [
const Padding(
  padding: EdgeInsets.only(top: 40),
  child:   Text('Do You want to use this app without limits? \n           Buy Premium unlock all features',textScaleFactor: 1.2,style: TextStyle(fontWeight: FontWeight.w500),),
),

     Container(

       height: 400,
       decoration: BoxDecoration( color: Colors.white, borderRadius:BorderRadius.circular(20)),
       margin: EdgeInsets.all(15),
       child: Column(
         children: [
           Row(
             children: [
               Expanded(

                 child: Container(width:100,
                   height: 150,
                   margin: const EdgeInsets.only(top: 20,left: 10,right: 10),
                   decoration: BoxDecoration(color: Colors.blue[100],borderRadius: BorderRadius.circular(20)),
               child: const Column(children: [
                 SizedBox(height: 20,),
                 CircleAvatar(backgroundImage: AssetImage('assets/images/img_17.png')),
                 SizedBox(height: 7,),
                 Text('Monthly',textScaleFactor: 1.3,),
                 SizedBox(height: 5,),
                 Text('\$175',textScaleFactor:1.4,style: TextStyle(fontWeight: FontWeight.bold),)
               ]),
                 ),
               ),
               Expanded(
                 child: Container(width:100,
                   height: 150,
                   margin: const EdgeInsets.only(top: 20,left: 10,right: 10),

                   decoration: BoxDecoration(   color: Colors.pink[100],borderRadius: BorderRadius.circular(20)),
                   child: const Column(
                     children: [
                       SizedBox(height: 20,),
                       CircleAvatar(backgroundImage: AssetImage('assets/images/img_17.png')),
                       SizedBox(height: 7,),
                       Text('Yearly',textScaleFactor: 1.3,),
                       SizedBox(height: 5,),
                       Text("\$1250",textScaleFactor:1.4,style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                 ),
               ),
               Expanded(
                 child: Container(width:100,
                   height: 150,
                   margin: const EdgeInsets.only(top: 20,left: 10,right: 10),
                   decoration: BoxDecoration( color: Colors.greenAccent[100],borderRadius: BorderRadius.circular(20)),
                   child: const Column(
                     children: [
                       SizedBox(height: 20,),
                       CircleAvatar(backgroundImage: AssetImage('assets/images/img_17.png')),
                       SizedBox(height: 7,),
                       Text('Lifetime',textScaleFactor: 1.3,),
                       SizedBox(height: 5,),
                       Text('\$10,000',textScaleFactor:1.4,style: TextStyle(fontWeight: FontWeight.bold),)
                     ],
                   ),
                  ),
               ),
             ],
           ),
           Container(
             margin: EdgeInsets.only(top: 20,left: 10,right: 10),
          padding: EdgeInsets.only(bottom: 15,right: 20,top: 10),
          decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: Colors.grey[200]),
             child: const Column(
               children: [
               Row(
                     children: [
                       SizedBox(width: 19,),
                      Expanded(
                           flex: 2,
                             child: Text('Benefits',textScaleFactor: 1.2,style: TextStyle(fontWeight: FontWeight.bold),)),

                       Expanded(
                         flex: 1,
                           child: Text('Free',textScaleFactor: 1.2,style: TextStyle(fontWeight: FontWeight.bold),)),
                       Expanded(
                         flex: 1,
                           child: Text('Premium',textScaleFactor: 1.2,style: TextStyle(fontWeight: FontWeight.bold),)),
                     ],
                   ),

                 Divider(),
                 Row(children: [
                   SizedBox(width: 15,),
                      Expanded(
                        flex: 2,
                          child: Text('Manage Employees',textScaleFactor:1.1)),
                      SizedBox(width: 10,),
                      Expanded(
                          flex: 1,
                          child: Text(' 05',textScaleFactor:1.1)),
                      Expanded(
                          flex: 1,
                          child: Text('Unlimited',textScaleFactor:1.2))
                    ],),

                 Divider(color: Colors.grey,),
                Row(children: [
                  SizedBox(width: 15,),
                     Expanded(
                         flex: 2,
                         child: Text('Manage Employees',textScaleFactor:1.1)),
                     SizedBox(width: 10,),
                     Expanded(
                         flex: 1,
                         child: Text('  x',textScaleFactor:1.3)),
                     Expanded(
                         flex: 1,
                         child: Text('   ✓',textScaleFactor:1.3))
                   ],),

                 Divider(color: Colors.grey,),
             Row(children: [
               SizedBox(width: 15,),
                     Expanded(

                         flex: 2,
                         child: Text('Manage Employees',textScaleFactor:1.1,)),
                     SizedBox(width: 10,),
                     Expanded(
                         flex: 1,
                         child: Text('  x',textScaleFactor: 1.3,)),
                     Expanded(
                         flex: 1,
                         child: Text('   ✓',textScaleFactor:1.3))
                   ],),
               ],
             ),
           )
         ],
       )
     )
   ]),
    ),
    );
  }
}




