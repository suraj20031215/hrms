import 'package:flutter/material.dart';
import '../payroll/bonus/bonuslist.dart';
import '../payroll/increment/incrementlist.dart';
import '../payroll/payment/emplist.dart';


class PayrollPage extends StatelessWidget {
  const PayrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.blue[700],
        appBar: AppBar(
          title: const Text('Payroll Management'),
          backgroundColor: Colors.blue[700],
          foregroundColor: Colors.white,

        ),

        body: Container(
          margin: const EdgeInsets.only(top: 20),
          height: double.infinity,
          width: double.infinity,
          decoration:  const BoxDecoration(color:Color.fromRGBO(233, 236,253,13), borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40))),

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
                      context, MaterialPageRoute(builder: (context) =>const IncrementList()));
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
                      child: ListTile(leading: const CircleAvatar(backgroundImage: AssetImage('assets/images/img_5.png'),
                      ),
                        title: Text('Increment',style: Theme.of(context).textTheme.headline1,),
                        trailing:const Icon(Icons.chevron_right),
                      ),
                    )
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const EmpList(),));
                },
                child: Container(
                    width: 160,
                    height: 70,
                    // padding: const EdgeInsets.all(8),
                    margin:  const EdgeInsets.only(left: 8,right: 8,top: 20),
                    decoration:  BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(1.0),
                          spreadRadius: 0.0,
                          blurRadius: 1,
                          offset:  const Offset(-5.0, -0.0),// changes position of shadow
                        ),
                      ],),
                    child:  Center(
                      child: ListTile(leading:const CircleAvatar( backgroundImage: AssetImage('assets/images/img_6.png'),
                      ),
                        title: Text('Payment',style: Theme.of(context).textTheme.headline1,
                        ),
                        trailing:const Icon(Icons.chevron_right),
                      ),
                    )
                ),
              ),


              InkWell(
              //   onTap:() {
              //     Navigator.push(
              //         context, MaterialPageRoute(builder: (context) => RequestList()));
              //   },

                child: Container(
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
                      child: ListTile(leading:const CircleAvatar(backgroundImage: AssetImage('assets/images/img_7.png'),
                      ),
                        title: Text('Salary Sheet',style: Theme.of(context).textTheme.headline1,
                        ),
                        trailing:const Icon(Icons.chevron_right),
                      ),
                    )
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>const BonusList()));
                },
                child: Container(
                    width: 160,
                    height: 70,
                    // padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(left: 8,right: 8,top: 20),
                    decoration:  BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.redAccent.withOpacity(1.0),
                          spreadRadius: 0.0,
                          blurRadius: 1,
                          offset: const Offset(-5.0, -0.0),// changes position of shadow
                        ),
                      ],),
                    child:  Center(
                      child: ListTile(leading: const CircleAvatar(backgroundImage: AssetImage('assets/images/img_8.png'),
                      ),
                        title: Text('Bonus',style: Theme.of(context).textTheme.headline1,
                        ),
                        trailing:const Icon(Icons.chevron_right),
                      ),
                    )
                ),
              ),
              InkWell(
                onTap:() {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => SalarySatatementList()));
                },
                child: Container(
                    width: 160,
                    height: 70,
                    // padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(left: 8,right: 8,top: 20),
                    decoration:  BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurpleAccent.withOpacity(1.0),
                          spreadRadius: 0.0,
                          blurRadius: 1,
                          offset: const Offset(-5.0, -0.0),// changes position of shadow
                        ),
                      ],),
                    child:  Center(
                      child: ListTile(leading: const CircleAvatar(backgroundImage: AssetImage('assets/images/img_9.png'),
                      ),
                        title: Text('Loan',style: Theme.of(context).textTheme.headline1,
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
                        color: Colors.brown.withOpacity(1.0),
                        spreadRadius: 0.0,
                        blurRadius: 1,
                        offset: const Offset(-5.0, -0.0),// changes position of shadow
                      ),
                    ],),
                  child: const Center(
                    child:  ListTile(leading: CircleAvatar(backgroundImage: AssetImage('assets/images/img_10.png'),
                    ),
                      title: Text('Provident Fund',style: TextStyle(fontSize:18),
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
