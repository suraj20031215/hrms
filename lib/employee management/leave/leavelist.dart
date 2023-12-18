import 'package:flutter/material.dart';
import 'package:hrms/employee%20management/leave/requestlist.dart';
import 'approvelist.dart';



class LeaveList extends StatefulWidget {
  const LeaveList({super.key});

  @override
  State<LeaveList> createState() => _LeaveListState();
}

class _LeaveListState extends State<LeaveList> {
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                actions: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded,color: Colors.white,)),

                ],
                title: const Text('Leave List'),
                backgroundColor: Colors.blue[700],
                foregroundColor: Colors.white,
                pinned: true,
                floating: true,
                elevation: 0,

                bottom: TabBar(
                  indicator: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(12)

                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.grey,
                  labelColor: Colors.red, // Set the label color to red
                  tabs: [
                    Tab(
                        child: Row(

                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(

                                margin: const EdgeInsets.only(left: 40),
                                child: const Center(
                                  child: Text('Request',style: TextStyle(color: Colors.white,fontSize: 23),
                                  ),
                                )
                            ),
                          ],
                        )),

                    Tab(child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(

                            margin: const EdgeInsets.only(left: 40),
                            child: const Center(
                              child: Text('Approve',style: TextStyle(color: Colors.white,fontSize: 23),
                              ),
                            )
                        ),
                      ],
                    )),

                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              RequestList(),
              ApproveList(),
            ],
          ),
        ),
      ),
    );
  }
}