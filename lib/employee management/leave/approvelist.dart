import 'package:flutter/material.dart';



class ApproveList extends StatefulWidget {
  const ApproveList({super.key});

  @override
  State<ApproveList> createState() => _ApproveListState();
}

class _ApproveListState extends State<ApproveList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor:Colors.blue[700],



        body:
        Container(
            margin: const EdgeInsets.only(top: 20),
            height: double.infinity,
            width: double.infinity,
            decoration:  const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40))),
            child:SingleChildScrollView(
              child: Column(
                children: [

                  Container(
                    height: 170,
                    margin: const EdgeInsets.only(top:30,left: 15,right: 15),
                    decoration: BoxDecoration( color: Colors.white,  borderRadius: BorderRadius.circular(10), boxShadow: [
                      BoxShadow(
                        color:Colors.black.withOpacity(1.0),
                        spreadRadius: 0.3,
                        blurRadius: 1,
                        // changes position of shadow
                      ),
                    ],),

                      child: const Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(backgroundImage:  AssetImage('assets/images/emp.png'),),
                            title: Text('Suraj Kumar'),
                            subtitle: Text('Application Developer'),
                            trailing: Text('Sick',style: TextStyle(fontSize: 16,color: Colors.blue),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Row(children: [
                              Expanded(
                                  flex: 3,
                                  child: Text('From Date')),
                              Expanded(
                                  flex: 3,
                                  child: Text('To Date')),
                              Expanded(
                                  flex: 2,
                                  child: Text('Leave Date'))
                            ],),
                          ),
                          Divider(),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Row(children: [
                              Expanded(
                                  flex: 3,
                                  child: Text('17-02-23',style: TextStyle(color: Colors.black54),)),
                              Expanded(
                                  flex: 3,
                                  child: Text('19 Aug 2023',style: TextStyle(color: Colors.black54),)),
                              Expanded(
                                  flex: 2,
                                  child: Text('02 Days',style: TextStyle(color: Colors.black54),))
                            ],),
                          ),


                         Padding(
                           padding: EdgeInsets.only(left: 20,top: 10),
                           child: Row(
                             children: [
                               Text('Approved',style: TextStyle(color: Colors.green,fontSize: 16),),
                             ],
                           ),
                         )

                        ],
                      ),

                  ),
                  Container(
                    height:170,
                    margin: const EdgeInsets.only(top:30,left: 15,right: 15),
                    decoration: BoxDecoration( color: Colors.white,  borderRadius: BorderRadius.circular(10), boxShadow: [
                      BoxShadow(
                        color:Colors.black.withOpacity(1.0),
                        spreadRadius: 0.3,
                        blurRadius: 1,
                        // changes position of shadow
                      ),
                    ],),

                    child: const Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(backgroundImage:  AssetImage('assets/images/emp1.png'),),
                          title: Text('Unkown Emp.'),
                          subtitle: Text('Application Developer'),
                          trailing: Text('Sick',style: TextStyle(fontSize: 16,color: Colors.blue),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20,bottom: 0),
                          child: Row(children: [
                            Expanded(
                                flex: 3,
                                child: Text('From Date')),
                            Expanded(
                                flex: 3,
                                child: Text('To Date')),
                            Expanded(
                                flex: 2,
                                child: Text('Leave Date'))
                          ],),
                        ),
                        Divider(),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(children: [
                            Expanded(
                                flex: 3,
                                child: Text('17-02-23',style: TextStyle(color: Colors.black54),)),
                            Expanded(
                                flex: 3,
                                child: Text('19 Aug 2023',style: TextStyle(color: Colors.black54),)),
                            Expanded(
                                flex: 2,
                                child: Text('02 Days',style: TextStyle(color: Colors.black54),))
                          ],),
                        ),


                        Padding(
                          padding: EdgeInsets.only(left: 20,top: 10),
                          child: Row(
                            children: [
                              Text('Approved',style: TextStyle(color: Colors.green,fontSize: 16),),
                            ],
                          ),
                        )

                      ],
                    ),

                  ),



                ],
              ),
            )
        )

    );
  }
}

