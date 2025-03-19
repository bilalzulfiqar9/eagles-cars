import 'dart:async';

import 'package:flutter/material.dart';
import 'package:house/splash_screen_lite.dart';
 

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   @override
  void initState(){
   super.initState();

   Timer(Duration(seconds: 3),(){
  
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SplashScreenLite(),));
   }
   );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(137, 45, 42, 42),
      body: Column(    
         mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
          const Spacer()  ,       
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
               
              children: [
                 Text('Eagles',
                 style: TextStyle(
                  color: Color.fromRGBO(54, 52, 52, 1),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,                  
                 )
                 ),
                 SizedBox(
                  width: 70,
                  height: 70,
                  child:
                 Image.asset('assets/Group 34202.PNG')),
                 Text('Cars',
                 style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                 ),
                 )
                
              ],
            ),    
           ),
            const Spacer(),
           const CircularProgressIndicator(
            color: Colors.white70,
           ),
           const SizedBox(height: 30,)
        ],
      ),
    );
  }
}