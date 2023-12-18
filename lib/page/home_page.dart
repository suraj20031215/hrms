import 'package:flutter/material.dart';
import 'package:hrms/expense/expenselist.dart';
import 'package:hrms/extrapage/notification.dart';
import 'package:hrms/page/payrollpage.dart';
import '../widget/drawer.dart';
import '../file/filelist.dart';
import 'employepage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var md =MediaQuery.of(context).size;


    return Scaffold(
      backgroundColor:Colors.blue[700],
      appBar: AppBar(

        title: const Text('HRM Management'),
backgroundColor: Colors.blue[700],
          foregroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.notification_add_outlined),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationPage(),));
              },

          ),
        ],
      ),


      body: Container(
        margin: const EdgeInsets.only(top: 30),
        height: md.height,
        decoration:  BoxDecoration(color:Colors.blue.shade50, borderRadius: const BorderRadius.only(topLeft:Radius.circular(30),topRight:Radius.circular(30))),
child: ListView(
      primary: false,
      padding: const EdgeInsets.only(top: 30,left: 20,right: 20,bottom: 1),
      // crossAxisSpacing: 30,
      // mainAxisSpacing: 20,
      // crossAxisCount: 2,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap:() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const EmployePage()));
              },
              child: Container(
                  width: md.width*0.41,
                  height: md.height/6,

                padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(left: 1,bottom: 20),

                  decoration:  BoxDecoration(
                    color:Colors.white,
                    // borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withOpacity(1.0),
                        spreadRadius: 0.0,
                        blurRadius: 1,
                        offset: const Offset(-5.0, -0.0),// changes position of shadow
                      ),
                    ],
                  ),

                child: const Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                    CircleAvatar(backgroundImage: NetworkImage('https://lh3.googleusercontent.com/u/0/drive-viewer/AK7aPaBoeV7c8hlz_GJZ-Jef2P_uwpr6RFGSvBs0TJREDtBSYrMxjt9bwtKj564jOkPlqLr3EHFdDFiuQVwM9YdgsQPI1tkbJw=w1366-h607'),)
                      ],
                    ),
                    Row(
                      children: [
                        Text('Employee \n Management',style: TextStyle(fontSize:18),),
                      ],
                    ),

                  ],
                )

              ),
            ),


            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ExpenseList(),));
              },
              child: Container(
                  width: md.width*0.41,
                  height: md.height/6,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(right:1,bottom: 20),
                  decoration:  BoxDecoration(
                    color:Colors.white,
                    // borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(1.0),
                        spreadRadius: 0.0,
                        blurRadius: 1,
                        offset: const Offset(-5.0, -0.0),// changes position of shadow
                      ),
                    ],),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                        CircleAvatar(backgroundImage: NetworkImage('https://lh3.googleusercontent.com/u/0/drive-viewer/AK7aPaBoeV7c8hlz_GJZ-Jef2P_uwpr6RFGSvBs0TJREDtBSYrMxjt9bwtKj564jOkPlqLr3EHFdDFiuQVwM9YdgsQPI1tkbJw=w1366-h607'),)
                        ],
                      ),
                      Row(
                        children: [
                          Text('Expenses \nManagement',style: TextStyle(fontSize:18),),
                        ],
                      ),

                    ],
                  )
              ),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap:() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const PayrollPage()));
              },
              child: Container(
                  width: md.width*0.41,
                  height: md.height/6,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(left:1),
                  decoration:  BoxDecoration(
                    color:Colors.white,
                    // borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightGreen.withOpacity(1.0),
                        spreadRadius: 0.0,
                        blurRadius: 1,
                        offset: const Offset(-5.0, -0.0),// changes position of shadow
                      ),
                    ],
                  ),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(backgroundImage: NetworkImage('https://5.imimg.com/data5/SELLER/Default/2022/10/MJ/EO/HQ/52496319/payroll-software-500x500.png')),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Payroll \nManagement',style: TextStyle(fontSize:18),),
                        ],
                      ),

                    ],
                  )

              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const FileList()));
              },
              child: Container(
                  width: md.width*0.41,
                  height: md.height/6,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(right: 1),
                  decoration:  BoxDecoration(
                    color:Colors.white,
                    // borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(1.0),
                        spreadRadius: 0.0,
                        blurRadius: 1,
                        offset: const Offset(-5.0, -0.0),// changes position of shadow
                      ),
                    ],),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar( backgroundImage: AssetImage('assets/images/img_1.png')),
                        ],
                      ),
                      Row(
                        children: [
                          Text('File \nManagement',style: TextStyle(fontSize:18,),),
                        ],
                      ),

                    ],
                  )

              ),
            ),


          ],
        ),

        Container(
            width: 160,
            height: md.height*0.07,
            // padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(left: 8,right: 8,top: 20),
            decoration:  BoxDecoration(
              color:Colors.white,
              // borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.orange.withOpacity(1.0),
                  spreadRadius: 0.0,
                  blurRadius: 1,
                  offset: const Offset(-5.0, -0.0),// changes position of shadow
                ),
              ],),
            child:  const Center(
              child: ListTile(leading: CircleAvatar(backgroundImage: NetworkImage('https://5.imimg.com/data5/SELLER/Default/2022/10/MJ/EO/HQ/52496319/payroll-software-500x500.png'),
              ),
                title: Text('Client Management',style: TextStyle(fontSize:18),
                ),
                trailing: Icon(Icons.chevron_right),
              ),
            )
        ),



        Container(
            width: 160,
            height: md.height*0.07,
            // padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(left: 8,right: 8,top: 20),
            decoration:  BoxDecoration(
              color:Colors.white,
              // borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color:Colors.purple.withOpacity(1.0),
                  spreadRadius: 0.0,
                  blurRadius: 1,
                  offset: const Offset(-5.0, -0.0),// changes position of shadow
                ),
              ],),
            child:  const Center(
              child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage('assets/images/noc.png'),
              ),
                title: Text('NOC/EX Certificate',style: TextStyle(fontSize:18),
                ),
                trailing: Icon(Icons.chevron_right),
              ),
            )
        ),


        Container(
            width: 160,
            height: md.height*0.07,
            // padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(left: 8,right: 8,top: 20),
            decoration:  BoxDecoration(
              color:Colors.white,
              // borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color:Colors.lightGreen.withOpacity(1.0),
                  spreadRadius: 0.0,
                  blurRadius: 1,
                  offset: const Offset(-5.0, -0.0),// changes position of shadow
                ),
              ],),
            child:  const Center(
              child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage('assets/images/notice.png'),
              ),
                title: Text('Notice Board',style: TextStyle(fontSize:18),
                ),
                trailing: Icon(Icons.chevron_right),
              ),
            )
        ),



        Container(
            width: 160,
            height: md.height*0.07,
            // padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(left: 8,right: 8,top: 20),
            decoration:  BoxDecoration(
              color:Colors.white,
              // borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.red.withOpacity(1.0),
                  spreadRadius: 0.0,
                  blurRadius: 1,
                  offset: const Offset(-5.0, -0.0),// changes position of shadow
                ),
              ],),
            child:  const Center(
              child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage('assets/images/award.png'),
              ),
                title: Text('Award',style: TextStyle(fontSize:18),
                ),
                trailing: Icon(Icons.chevron_right),
              ),
            )
        ),
      ],
    ),

      ),

      drawer: const MyDrawer(),
    );
  }
}
