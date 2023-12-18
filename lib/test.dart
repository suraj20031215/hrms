import 'package:flutter/material.dart';

import 'employee management/leave/approvelist.dart';
import 'employee management/leave/requestlist.dart';


class Trand extends StatefulWidget {
  const Trand({super.key});

  @override
  State<Trand> createState() => _TreandState();
}

class _TreandState extends State<Trand> {
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                // actions: [
                //   IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,)),
                //   IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined,color: Colors.white,)),
                //   IconButton(onPressed: (){}, icon: Icon(Icons.shop_2,color: Colors.white,)),
                // ],
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