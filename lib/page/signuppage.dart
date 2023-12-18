import 'package:flutter/material.dart';

import 'package:hrms/page/loginpage.dart';

import 'home_page.dart';




enum Level {
  low('1-50',Colors.black),
  medium('50-200', Colors.black),
  average('200-400',Colors.black),
  high('400-1000', Colors.black),
  grey('1000+',Colors.black);

  const Level(this.label, this.color);
  final String label;
  final Color color;
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool passwordVisible=false;
  @override
  Widget build(BuildContext context) {


    var md =MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor:Colors.blue[700],
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor:Colors.blue[700],
          title: const Text('Sign Up',textScaleFactor: 1.2,),
        ),
        body:Container(
          margin: const EdgeInsets.only(top: 30),
          height: md.height,
          decoration:  const BoxDecoration(color:Colors.white, borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight:Radius.circular(30))),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  // SizedBox(
                  //     width: double.infinity,
                  //     height: 300,
                  //     child: Image.asset('assets/images/login.png')),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8,top: 20,bottom: 8),
                    child: TextFormField(
                        decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),),
                            // labelStyle:TextStyle(color: Colors.blue),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1)),
                            labelText: 'Company Name',
                            hintText: 'xyzTech',
                            prefixIcon: Icon(Icons.factory_outlined)
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),),
                            // labelStyle:TextStyle(color: Colors.blue),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1)),
                            labelText: 'Owner/Admin Name',
                            hintText: 'xyz owner',
                            prefixIcon: Icon(Icons.perm_identity_outlined)
                        )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),),
                            // labelStyle:TextStyle(color: Colors.blue),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1)),
                            labelText: 'Email ID',
                            hintText: 'example@gmail.com',
                            prefixIcon: Icon(Icons.email_outlined)
                        )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),),
                            // labelStyle:TextStyle(color: Colors.blue),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1)),
                            labelText: 'Mobile Number',
                            hintText: '+91-0000011123',
                            prefixIcon: Icon(Icons.phone_android)
                        )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(



                      obscureText: passwordVisible,

                      decoration: InputDecoration(

                        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                        hintText: "Example@123",
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.lock_outline),
                        helperText:"Password must contain special character",
                        helperStyle:const TextStyle(color:Colors.red),
                        suffixIcon: IconButton(
                          icon: Icon(passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(
                                  () {
                                passwordVisible = !passwordVisible;
                              },
                            );
                          },
                        ),
                        alignLabelWithHint: false,
                        // filled: true,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                    ),
                  ),

                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownMenu<Level>(
                       width: md.width*0.9,
                        initialSelection: Level.low,
                        // requestFocusOnTap: true,
                        label: const Text('Employee Strength'),
                        onSelected: (Level? color) {
                          setState(() {
                            // selectedColor = color;
                          });
                        },
                        dropdownMenuEntries: Level.values
                            .map<DropdownMenuEntry<Level>>(
                                (Level color) {
                              return DropdownMenuEntry<Level>(
                                value: color,
                                label: color.label,
                                // enabled: color.label != 'Grey',
                                // style: MenuItemButton.styleFrom(
                                //   foregroundColor: color.color,
                                // ),
                              );
                            }).toList(),
                      ),

                  ),

                  Container(
                      width: md.width*0.9,
                      height: 50,
                      margin: const EdgeInsets.all(10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade300,),
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage()));
                          },
                          child: const Text('Sign Up',textScaleFactor: 1.2,
                            style: TextStyle(color: Colors.white),)
                      )
                  ),

                  Container(
                      margin: const EdgeInsets.only(left: 90,top: 10),
                      width: double.infinity,
                      child: Center(
                          child: Row(
                            children: [
                              const Text("Don't have an account?",textScaleFactor: 1,),
                              Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: InkWell(
                                     onTap: () {
                                       Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginPage(),));
                                     },
                                    child: const Text("Sign In",textScaleFactor: 1.1,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                              ),
                            ],
                          ))),
                   SizedBox(
                     height: 10,
                   ),
                   Row(
                    children: [
                      SizedBox(
                         width: md.width*0.35,
                          child: Divider()),
                      Text('OR Sign up with'),
                      SizedBox(
                          width: md.width*0.34,
                          child: Divider()),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),



                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: md.width*0.14,
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: CircleAvatar(backgroundImage: NetworkImage('https://www.facebook.com/images/fb_icon_325x325.png')),
                        ),
                      ),
                      SizedBox(
                        width:md.width*0.1,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: SizedBox(
                          width: md.width*0.14,
                          child: const CircleAvatar(backgroundImage: AssetImage('assets/images/google.png'),)
                        ),
                      ),
                      SizedBox(
                        width:md.width*0.1,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: SizedBox(
                            width: md.width*0.14,
                            child: const CircleAvatar(backgroundImage: AssetImage('assets/images/twitter.png'),)
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],

              ),
            ),

          ),
        )

    );
  }
}
