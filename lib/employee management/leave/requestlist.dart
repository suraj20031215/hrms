import 'package:flutter/material.dart';


class RequestList extends StatefulWidget {
  const RequestList({super.key});

  @override
  State<RequestList> createState() => _RequestListState();
}

class _RequestListState extends State<RequestList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor:Colors.blue[700],



        body:
    Container(
      margin: const EdgeInsets.only(top: 20),
      height: double.infinity,
      width: double.infinity,
      decoration:  const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40))),
      child:Column(
        children: [

          Container(
            height: 200,
            margin: const EdgeInsets.only(top:30,left: 15,right: 15),
decoration: BoxDecoration( color: Colors.white,  borderRadius: BorderRadius.circular(5), boxShadow: [
  BoxShadow(
    color:Colors.black.withOpacity(1.0),
    spreadRadius: 0.3,
    blurRadius: 1,
    // changes position of shadow
  ),
],),

              child: Column(
                children: [
                  const ListTile(
                    leading: CircleAvatar(backgroundImage:  AssetImage('assets/images/emp.png'),),
                    title: Text('Suraj Kumar'),
                    subtitle: Text('Application Developer'),
                    trailing: Text('Sick',style: TextStyle(fontSize: 16,color: Colors.blue),),
                  ),
                  const Padding(
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
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.only(left: 20,bottom: 10),
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
                    padding: const EdgeInsets.only(bottom: 0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(

                              decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10)),
                              height: 40,
                              margin: const EdgeInsets.only(top: 10,left: 60,right:10),
                              child: const Center(
                                child: Text('Approve',style: TextStyle(color: Colors.white,fontSize: 16),
                                ),
                              )
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                              decoration: BoxDecoration(color: Colors.red.shade50,borderRadius: BorderRadius.circular(10)),
                              height: 40,
                              margin: const EdgeInsets.only(top: 10,left:10,right:60),
                              child: const Center(
                                child: Text('Reject',style: TextStyle(color: Colors.orange,fontSize: 16),
                                ),
                              )
                          ),
                        )

                      ],
                    ),
                  )
                ],
              ),
          ),

          Container(
            height: 200,
            margin: const EdgeInsets.only(top:20,left: 15,right: 15),
            decoration: BoxDecoration( color: Colors.white,  borderRadius: BorderRadius.circular(5), boxShadow: [
              BoxShadow(
                color:Colors.black.withOpacity(1.0),
                spreadRadius: 0.3,
                blurRadius: 1,
                // changes position of shadow
              ),
            ],),

            child: Column(
              children: [
                const ListTile(
                  leading: CircleAvatar(backgroundImage:  AssetImage('assets/images/emp1.png'),),
                  title: Text('Unkown Emp.'),
                  subtitle: Text('Application Developer'),
                  trailing: Text('Casule',style: TextStyle(fontSize: 16,color: Colors.blue),),
                ),
                const Padding(
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
                const Divider(),
                const Padding(
                  padding: EdgeInsets.only(left: 20,bottom: 10),
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
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(

                            decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10)),
                            height: 40,
                            margin: const EdgeInsets.only(top: 10,left: 60,right:10),
                            child: const Center(
                              child: Text('Approve',style: TextStyle(color: Colors.white,fontSize: 16),
                              ),
                            )
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                            decoration: BoxDecoration(color: Colors.red.shade50,borderRadius: BorderRadius.circular(10)),
                            height: 40,
                            margin: const EdgeInsets.only(top: 10,left:10,right:60),
                            child: const Center(
                              child: Text('Reject',style: TextStyle(color: Colors.orange,fontSize: 16),
                              ),
                            )
                        ),
                      )

                    ],
                  ),
                )


              ],
            ),

          ),

        ],
      )
    )

      );
      }
      }

