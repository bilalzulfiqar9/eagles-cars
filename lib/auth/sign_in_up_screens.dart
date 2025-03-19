import 'package:flutter/material.dart';
import 'package:house/auth/sign_in.dart';
import 'package:house/auth/sign_up.dart';

class SignInUpScreens extends StatefulWidget {
  const SignInUpScreens({super.key});

  @override
  State<SignInUpScreens> createState() => _SignInUpScreensState();
}

class _SignInUpScreensState extends State<SignInUpScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:  SingleChildScrollView(
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 80,),
            SizedBox(
              height: 80,
              width: 80,
              child: Image.asset('assets/Group 34202.PNG')),
            Center(  
                
              child:
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    SizedBox(height: 32,),
                          Text('Eagles', style: TextStyle(
                color: Color.fromRGBO(66, 65, 65, 1),
                fontWeight: FontWeight.bold,
                fontSize: 30,
                          ),
                          ),
                         SizedBox(height: 32,),
                          Text(' Cars', style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontWeight: FontWeight.bold,
                fontSize: 30,
                          ),
                          ),
                        ]
                ),
               
            ),
            SizedBox(height: 110,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome to Eagles cars', style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),textAlign: TextAlign.start,),
                    SizedBox(height: 10,),
                  Text('Book your ride anytime, anywhere in Africa',style: TextStyle(
                    
                     ),textAlign: TextAlign.start,
                 ),
                ],
              ),
            ),
                 SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(onPressed: ( ){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              
              style: TextButton.styleFrom(
                 foregroundColor: Colors.white,
                 backgroundColor: Colors.black,
                 minimumSize: const Size(double.infinity, 50),
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))
                  ),
              ),
              
              
              child: Text('Sign Up'),
                 
                 
                ),
            ),
            
        
              
            
             
             
        
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
              }, 
              
              style: TextButton.styleFrom(
                 foregroundColor: Colors.black,
                 side: BorderSide(width: 1),
                 backgroundColor: Colors.white,
                 minimumSize: const Size(double.infinity, 50),
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))
                 )
              ),
              
              child: Text('Sign In')),
            )       
          
          
          ],
        ),
      ) ,
      
    );
  }
}