import 'package:flutter/material.dart';

class TermsServices extends StatefulWidget {
  const TermsServices({super.key});

  @override
  State<TermsServices> createState() => _TermsServicesState();
}

class _TermsServicesState extends State<TermsServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.blue[700],
        appBar: AppBar(
          title: const Text('Terms & Conditions'),
          backgroundColor: Colors.blue[700],
          foregroundColor: Colors.white,

        ),


        body: Container(
            margin: const EdgeInsets.only(top: 20),
            height: double.infinity,
            width: double.infinity,
            decoration:  const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40))),
            child:SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 27,left: 18),
                    child: Row(
                      children: [
                        Text('Terms And Conditions of use',textScaleFactor: 1.7,style: TextStyle(fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),

                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Row(
                          children: [
                            Text('Date Update"(7 Jun 2021)',style: TextStyle(color: Colors.grey[700]),),
                          ],
                        ),
                      ),

                 const Padding(
                        padding: EdgeInsets.only(left: 18,right: 18,top: 30,bottom: 20),
                        child: Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'
                            ' Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus.'
                            ' Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt.'
                            ' Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus.'),
                      ),
                ],

              ),
            )

        )

    );
  }
}
