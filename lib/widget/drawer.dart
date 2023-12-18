import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hrms/extrapage/termsservices.dart';
import 'package:hrms/page/role_page.dart';
import 'package:hrms/profile/profile.dart';

import '../extrapage/notification.dart';
import '../extrapage/premium.dart';
import '../extrapage/privacypolicy.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    return Drawer(

      backgroundColor:  Colors.white,

      child: ListView(

          padding: EdgeInsets.zero,
          children:  [

        Container(

          decoration: const BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight:Radius.circular(30),bottomLeft:Radius.circular(30) )
          ),
          child: Container(

            padding: EdgeInsets.zero,
              child: const UserAccountsDrawerHeader(
            decoration:BoxDecoration(),
                margin: EdgeInsets.zero,
                accountName: Text('Suraj Kumar',style: TextStyle(color:Colors.black,),), accountEmail:Text('sk@gmail.com',style: TextStyle(color:Colors.black,),),
                currentAccountPicture:CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg')),
              )
          ),
        ),
             Container(
               height: 100,
               decoration: BoxDecoration(
                 color: Colors.blue.shade700,
                 borderRadius: const BorderRadius.only(bottomRight:Radius.circular(30),bottomLeft:Radius.circular(30) )
               ),

               child: Expanded(

                 child: Row(
                   children: [
                     Expanded(
                       flex: 2,
                       child: Container(
                         padding: const EdgeInsets.only(top: 20),
                         child: const Column(
                           children: [
                             CircleAvatar(
                                 backgroundImage: NetworkImage('https://storage.googleapis.com/pfpai/styles/c6e8fe9e-1cd2-4e77-8327-709c3325a054.png?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=firebase-adminsdk-hu3sa%40stockai-362303.iam.gserviceaccount.com%2F20231107%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20231107T021254Z&X-Goog-Expires=518400&X-Goog-SignedHeaders=host&X-Goog-Signature=6826b9f8d54bcc4fc5b9ac0a2c8a63ac0ff26c39a03b33ecc17026619c251309113b8213994d359730f36a5511885b3ab8aef4127400ec91e26e146bd39184047a0cd691eca9b11e070d2f6ee9fdb5705b43f4ea94c431d5f8951dc1458c39f5e7a8b4e4c1a5fd078a100c16e41ece40fdd82475ad6d5525ec50bbf047cf877bcdade70aae99bc288554f7427756134c6ddac8ce04f0a0d44f3736a413c91663f05c98afb949ab8474f33b4557dd9988572011382210f958e870e8ba5690135093af156d8f4011aa26b2f4976cdbe6f575990f69b3d29fa9b6b1726473884d883743276612804703843715686fff410a6c2ef89685ffbbc7a4c4d773903dc537'),
                                 child: Text('22'),
                               ),

                           ],
                         ),
                       ),
                     ),
                     Expanded(
                       flex: 2,
                       child: Container(
                         padding: const EdgeInsets.only(top: 20),
                         child: const Column(
                           children: [
                             CircleAvatar(
                               backgroundImage: NetworkImage('https://storage.googleapis.com/pfpai/styles/c6e8fe9e-1cd2-4e77-8327-709c3325a054.png?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=firebase-adminsdk-hu3sa%40stockai-362303.iam.gserviceaccount.com%2F20231107%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20231107T021254Z&X-Goog-Expires=518400&X-Goog-SignedHeaders=host&X-Goog-Signature=6826b9f8d54bcc4fc5b9ac0a2c8a63ac0ff26c39a03b33ecc17026619c251309113b8213994d359730f36a5511885b3ab8aef4127400ec91e26e146bd39184047a0cd691eca9b11e070d2f6ee9fdb5705b43f4ea94c431d5f8951dc1458c39f5e7a8b4e4c1a5fd078a100c16e41ece40fdd82475ad6d5525ec50bbf047cf877bcdade70aae99bc288554f7427756134c6ddac8ce04f0a0d44f3736a413c91663f05c98afb949ab8474f33b4557dd9988572011382210f958e870e8ba5690135093af156d8f4011aa26b2f4976cdbe6f575990f69b3d29fa9b6b1726473884d883743276612804703843715686fff410a6c2ef89685ffbbc7a4c4d773903dc537'),
                               child: Text('3'),
                             )
                           ],
                         ),
                       ),
                     ),
                     Expanded(
                       flex: 2,
                       child: Container(
                         padding: const EdgeInsets.only(top: 20),
                         child: const Column(
                           children: [
                             CircleAvatar(
                              child: Text('5'),
                             )
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
             InkWell(
               onTap: () {

                 Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage(),));
               },
               child: ListTile(
                leading: Icon(CupertinoIcons.person,color: Colors.blue[700],),
                title: const Text('Employee Profile',
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.black),),
            ),
             ),
            ListTile(
              leading: Icon(Icons.videocam_outlined,color:Colors.blue[700],),
              title: const Text('Live Video Calling & Charting',
                textScaleFactor: 1.1,
                style: TextStyle(color: Colors.black,),),
            ),
           InkWell(
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => const PremiumVersion(),));

             },
             child: ListTile(
                leading: Icon(Icons.verified_outlined,color:Colors.blue[700],),
                title: const Text('Premium Version',
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.black,),),
              ),
           ),
      InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationPage(),));
        },
        child: ListTile(
                leading: Icon(Icons.notifications_none,color:Colors.blue[700],),
                title: const Text('Notification',
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.black,),),
                trailing: const Icon(Icons.chevron_right),
              ),
      ) ,
        InkWell(
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => const TermsServices(),));
          },
          child: ListTile(
                leading: Icon(Icons.info_outline,color:Colors.blue[700],),
                title: const Text('Terms of Services',
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.black,),),

              ),
        )  ,
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PrivacyPolicy(),));
            },
            child: ListTile(
                leading: Icon(Icons.warning_amber,color:Colors.blue[700],),
                title: const Text('Privacy Policy',
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.black,),),

              ),
          ),
             InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder:(context) => const RolePage(), ));
               },
               child: ListTile(
                leading: Icon(Icons.logout,color:Colors.blue[700],),
                title: const Text('LogOut',
                  textScaleFactor: 1.1,
                  style: TextStyle(color: Colors.black,),),

            ),
             )
      ]),
    );
  }
}
