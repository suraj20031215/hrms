import 'package:flutter/material.dart';
import 'package:hrms/page/home_page.dart';

import 'loginpage.dart';

class RolePage  extends StatelessWidget {
  const RolePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromRGBO(232, 249,252,20),

      body: SingleChildScrollView(
        child: Column(
          children: [
              Container(
                height: 300,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 106),
                  child: Image.network('https://lh3.googleusercontent.com/u/0/drive-viewer/AK7aPaBoeV7c8hlz_GJZ-Jef2P_uwpr6RFGSvBs0TJREDtBSYrMxjt9bwtKj564jOkPlqLr3EHFdDFiuQVwM9YdgsQPI1tkbJw=w1366-h607'
                  )
              ),
            Text('Select Your Role',textScaleFactor: 1.6,style: TextStyle(color: Colors.deepPurple.shade900,fontWeight: FontWeight.w700),),
const SizedBox(
  height: 10,
),
            InkWell(
              onTap:() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: Container(
                height: 70,
                margin: const EdgeInsets.only(top: 10,left: 20,right: 20),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.blueAccent[50],shape: BoxShape.rectangle,border:Border.all(width: 1),borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Container(
                      height:70,
                      margin: const EdgeInsets.only(right: 10),
                      child: const CircleAvatar(backgroundImage: AssetImage('assets/images/img_4.png')),
                    ),
                    const SizedBox(
                      width: 270,
                      child: Column(

                        children: [
                          Row(
                            children: [
                              Text('Business Owner/Admin/Hr',style: TextStyle(fontSize: 19),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Business Owner/Admin/Hr',style: TextStyle(fontSize: 12,color: Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),

            InkWell(
              onTap:() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>const LoginPage()));
              },

              child: Container(
                height: 70,
                margin: const EdgeInsets.only(top: 10,left: 20,right: 20,bottom:100),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.blueAccent[50],shape: BoxShape.rectangle,border:Border.all(width: 1),borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Container(
                      height:70,
                    margin: const EdgeInsets.only(right: 10),
                      child: const CircleAvatar(backgroundImage: AssetImage('assets/images/img_11.png')),
                    ),
                    const SizedBox(
                      width: 270,
                      child: Column(

                            children: [
                              Row(
                                children: [
                                  Text('Employee',style: TextStyle(fontSize: 19),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Register and start marking your attendance',style: TextStyle(fontSize:12,color: Colors.grey),),
                                ],
                              ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
