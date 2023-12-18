import 'package:flutter/material.dart';
import 'package:hrms/page/signuppage.dart';
import 'package:lottie/lottie.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  bool passwordVisibles=false;
  @override
  Widget build(BuildContext context) {
    var md =MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor:Colors.blue[700],
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor:Colors.blue[700],
        title: const Text('Sign In',textScaleFactor: 1.2,),
      ),
      body:Container(
        margin: const EdgeInsets.only(top: 30),
        height: md.height,
        decoration:  const BoxDecoration(color:Colors.white, borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight:Radius.circular(30))),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: md.width*0.9,
                  height: md.height*0.37,
                    child:  Lottie.asset('assets/lottie/loginani.json'),),
              const SizedBox(height: 20,),
              TextFormField(
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

                const SizedBox(
                  height: 10,
                ),


             TextField(
                    obscureText: passwordVisibles,
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
                        icon: Icon(passwordVisibles
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                                () {
                              passwordVisibles = !passwordVisibles;
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


                Container(
                    width: md.width*0.9,
                    height: 50,
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade300,),
                        onPressed: (){

                            Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage()));

                        },
                        child: const Text('Sign In',textScaleFactor: 1.2,
                          style: TextStyle(color: Colors.white),)
                    )
                ),

                Container(
                  margin: const EdgeInsets.only(left: 90,top: 10),
                    width: md.width*0.9,
                  child: Center(
                    child: Row(
                      children: [
                        const Text("Don't have an account?",textScaleFactor: 1,),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: InkWell(
                              onTap: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => const SignUpPage()));
                              },
                              child: const Text("Sign Up",textScaleFactor: 1.1,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                        ),
                      ],
    )
                  )
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                        width: md.width*0.34,
                        child: const Divider()),
                    const Text('OR Sign in with'),
                    SizedBox(
                        width: md.width*0.34,
                        child: const Divider()),
                  ],
                ),
                const SizedBox(
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
                )





              ],
            ),
          ),

        ),
      )
    );
  }
}
