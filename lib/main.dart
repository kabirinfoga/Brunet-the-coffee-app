import 'package:brunet/Authentication/signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         decoration:const BoxDecoration(
           image: DecorationImage(
             image: AssetImage('assets/download.jpg'),fit: BoxFit.cover
           ),
         ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 height: 60,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15.0),
                   color: Colors.transparent,
                   border: Border.all(
                       color:const Color(0xFF3E2723),
                       width: 2
                   ),
                 ),
                 child: TextButton(
                    child:const Text(
                      "Welcome",
                      style: TextStyle(fontSize: 20,
                          color: Color(0xFF3E2723),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                   onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn())
                      );
                   },
                 ),
               ),
             ),
           ],
         ),
       ),
    );
  }
}

