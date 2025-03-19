import 'dart:async';
import 'package:flutter/material.dart';
 import 'package:house/get_started/on_bonding_screen.dart';
  

class SplashScreenLite extends StatefulWidget {
  const SplashScreenLite({super.key});

  @override
  State<SplashScreenLite> createState() => _SplashScreenLiteState();
}

class _SplashScreenLiteState extends State<SplashScreenLite> {

   @override
  void initState(){
   super.initState();

   Timer(Duration(seconds: 5),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBondingScreen() ,));
   }
   );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
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
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                 ),
                 )
                
              ],
            ),    
           ),
            const Spacer(),
           const CircularProgressIndicator(
            color: Color.fromARGB(179, 3, 3, 3),
           ),
           const SizedBox(height: 30,)
        ],
      ),
    );
  }
}