import 'package:flutter/material.dart';

import 'addexpense.dart';

class ExpenseList extends StatefulWidget {
  const ExpenseList({super.key});

  @override
  State<ExpenseList> createState() => _ExpenseListState();
}

class _ExpenseListState extends State<ExpenseList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor:Colors.blue[700],
        appBar: AppBar(
          title: const Text('Expense List'),
          backgroundColor: Colors.blue[700],
          foregroundColor: Colors.white,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: const Icon(Icons.search_rounded),
                onPressed: () {},
              ),
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(

          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80))),
          onPressed: () {

            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const AddExpense()));
          },
          backgroundColor: Colors.blue.shade300,
          child: const Icon(Icons.add,color: Colors.white,),),
        body: Container(
            margin: const EdgeInsets.only(top: 20),
            height: double.infinity,
            width: double.infinity,
            decoration:  const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40))),
            child:Column(
              children: [

                Container(
                    height: 60,
                    // padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(left:30,right: 30,top: 20),
                    decoration:  BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color:Colors.black.withOpacity(1.0),
                          spreadRadius: 0.0,
                          blurRadius: 1,
                          // changes position of shadow
                        ),
                      ],),
                    child:  const Center(
                      child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage('assets/images/emp.png'),
                      ),
                        title: Text('Suraj Kumar'
                        ),
                        subtitle: Text('Application Developer'),
                        trailing: Icon(Icons.chevron_right),
                        dense: true,

                      ),
                    )
                ),

                Container(
                    height: 60,
                    // padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(left:30,right: 30,top: 20),
                    decoration:  BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color:Colors.black.withOpacity(1.0),
                          spreadRadius: 0.0,
                          blurRadius: 1,
                          // changes position of shadow
                        ),
                      ],),
                    child:  const Center(
                      child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage('assets/images/emp.png'),
                      ),
                        title: Text('Suraj Kumar'
                        ),
                        subtitle: Text('Application Developer'),
                        trailing: Icon(Icons.chevron_right),
                        dense: true,

                      ),
                    )
                ),

                Container(
                    height: 60,
                    // padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(left:30,right: 30,top: 20),
                    decoration:  BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color:Colors.black.withOpacity(1.0),
                          spreadRadius: 0.0,
                          blurRadius: 1,
                          // changes position of shadow
                        ),
                      ],),
                    child:  const Center(
                      child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage('assets/images/emp.png'),
                      ),
                        title: Text('Suraj Kumar'
                        ),
                        subtitle: Text('Application Developer'),
                        trailing: Icon(Icons.chevron_right),
                        dense: true,

                      ),
                    )
                ),

              ],
            )

        )


    );
  }
}
