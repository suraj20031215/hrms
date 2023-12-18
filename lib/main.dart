import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hrms/page/employepage.dart';
import 'package:hrms/page/loginpage.dart';
import 'package:hrms/page/payrollpage.dart';
import 'package:hrms/payroll/payment/payment_card.dart';
import 'package:hrms/splashscreen.dart';
//abc
// ZXP@445
// https://www.fmscrm.com/sup_rmg_admin/dashboard/
// import 'package:hrms/page/role_page.dart';
// import 'package:hrms/page/signuppage.dart';






void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        // "/":(context)=> const PaymentCard(),
        // "/":(context)=> const PayrollPage(),
        // "/":(context)=> const LoginPage(),
        // "/":(context)=> const HomePage(),
        // "/":(context)=> const EmployePage(),
        // "/":(context)=> const AddEmployee(),
        // "/":(context)=> const LeaveList(),
        // MyRoutes.loginRoutes :(context)=> const LoginPage(),
        // MyRoutes.homeRoutes  :(context)=> const HomePage(),
      } ,
      title: 'Flutter Demo',

      theme: ThemeData(

        textTheme: const TextTheme(headline1: TextStyle(fontSize: 18,fontFamily:'myfont')),

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Container() // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
