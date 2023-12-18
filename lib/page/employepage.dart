import 'package:flutter/material.dart';
import 'package:hrms/employee%20management/employee/employeelist.dart';
import 'package:hrms/employee%20management/salary/salarysatatementlist.dart';

import '../employee management/leave/leavelist.dart';
import '../employee management/leave/requestlist.dart';

class EmployePage extends StatelessWidget {
  const EmployePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue[700],
      appBar: AppBar(
        title: const Text('Employee Management'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,

      ),

      body: Container(
        margin: const EdgeInsets.only(top: 20),
        height: double.infinity,
        width: double.infinity,
        decoration:  BoxDecoration(color:Colors.blue.shade50, borderRadius:const BorderRadius.only(
            topLeft:Radius.circular(40),
            topRight:Radius.circular(40)
        )
        ),

child:ListView(
  // primary: false,
  padding: const EdgeInsets.only(right: 20,left:20,top: 10),
  // crossAxisSpacing: 30,
  // mainAxisSpacing: 20,
  // crossAxisCount: 2,
  children: <Widget>[
    


    
     InkWell(
       onTap:() {
         Navigator.push(
             context, MaterialPageRoute(builder: (context) =>const EmployeeList()));
       },
       child: Container(
           width: 160,
           height: 70,
          // padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(left: 8,right: 8,top: 20),
          decoration:  BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(1.0),
                spreadRadius: 0.0,
                blurRadius: 1,
                offset: const Offset(-5.0, -0.0),// changes position of shadow
              ),
            ],),
          child:  Center(
            child: ListTile(leading:const CircleAvatar(backgroundImage: AssetImage('assets/images/img_11.png'),
            ),
              title: Text('Add Employee',style: Theme.of(context).textTheme.headline1,
            ),
            trailing:const Icon(Icons.chevron_right),
            ),
          )
    ),
     ),



    Container(
        width: 160,
        height: 70,
        // padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(left: 8,right: 8,top: 20),
        decoration:  BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.pink.withOpacity(1.0),
              spreadRadius: 0.0,
              blurRadius: 1,
              offset: const Offset(-5.0, -0.0),// changes position of shadow
            ),
          ],),
        child:  Center(
          child: ListTile(leading: const CircleAvatar(backgroundImage: AssetImage('assets/images/img_13.png'),
          ),
            title: Text('Time Attendance',style: Theme.of(context).textTheme.headline1,
            ),
            trailing:const Icon(Icons.chevron_right),
          ),
        )
    ),


   InkWell(
     onTap:() {
       Navigator.push(
           context, MaterialPageRoute(builder: (context) =>const LeaveList()));
     },

     child: Container(
          width: 160,
          height: 70,
          // padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(left: 8,right: 8,top: 20),
          decoration:  BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(1.0),
                spreadRadius: 0.0,
                blurRadius: 1,
                offset: const Offset(-5.0, -0.0),// changes position of shadow
              ),
            ],),
          child:  Center(
            child: ListTile(leading:const CircleAvatar(backgroundImage: AssetImage('assets/images/leave.png'),
            ),
              title: Text('Leave Management',style: Theme.of(context).textTheme.headline1,
              ),
              trailing:const Icon(Icons.chevron_right),
            ),
          )
      ),
   ),
   Container(
        width: 160,
        height: 70,
        // padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(left: 8,right: 8,top: 20),
        decoration:  BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.red.withOpacity(1.0),
              spreadRadius: 0.0,
              blurRadius: 1,
              offset: const Offset(-5.0, -0.0),// changes position of shadow
            ),
          ],),
        child:  Center(
          child: ListTile(leading: const CircleAvatar(backgroundImage: AssetImage('assets/images/img_14.png'),
          ),
            title: Text('Employees Overtime',style: Theme.of(context).textTheme.headline1,
            ),
            trailing:const Icon(Icons.chevron_right),
          ),
        )
    ),
   InkWell(
     onTap:() {
       Navigator.push(
           context, MaterialPageRoute(builder: (context) =>const SalarySatatementList()));
     },
     child: Container(
          width: 160,
          height: 70,
          // padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(left: 8,right: 8,top: 20),
          decoration:  BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.purple.withOpacity(1.0),
                spreadRadius: 0.0,
                blurRadius: 1,
                offset: const Offset(-5.0, -0.0),// changes position of shadow
              ),
            ],),
          child:  Center(
            child: ListTile(leading: const CircleAvatar(backgroundImage: AssetImage('assets/images/img_15.png'),
            ),
              title: Text('Salary Satatement',style: Theme.of(context).textTheme.headline1,
              ),
              trailing:const Icon(Icons.chevron_right),
            ),
          )
      ),
   ),
   Container(
        width: 160,
        height: 70,
        // padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(left: 8,right: 8,top: 20),
        decoration:  BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.yellow.withOpacity(1.0),
              spreadRadius: 0.0,
              blurRadius: 1,
              offset: const Offset(-5.0, -0.0),// changes position of shadow
            ),
          ],),
        child:  const Center(
          child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage('assets/images/img_16.png'),
          ),
            title: Text('Reference',style: TextStyle(fontSize:18),
            ),
            trailing: Icon(Icons.chevron_right),
          ),
        )
    ),

  ],
),
      )
    );
  }
}
