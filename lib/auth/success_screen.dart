import 'package:flutter/material.dart';
import 'package:house/home/home.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column( children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: (){
                  
                }, icon: BackButton()),
              ],
            ),
            Center(
              child: Column(
                children: [
                  
                     SizedBox(
              height: 60,
              width: 60,
              child: Image.asset('assets/Group 34202.PNG')),
        
                  Center(  
                
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    SizedBox(height: 32,),
                          Text('Eagles', style: TextStyle(
                color: Color.fromRGBO(66, 65, 65, 1),
                fontWeight: FontWeight.bold,
                fontSize: 35,
                          ),
                          ),
                         SizedBox(height: 32,),
                          Text(' Cars', style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontWeight: FontWeight.bold,
                fontSize: 35,
                          ),
                          ),
                           
                                                                 ]
                                                                    ),                    
                                                                      ),
        
                                 SizedBox(height: 70,) ,                                    
                              SizedBox(
                                height: 100,
                                width: 100,
                                 child: Image.asset('assets/Group 365.png')),
        
                                 SizedBox(height: 20,), 
                                 Text('Success Full', style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                 ),),
        
                                 SizedBox(height: 10,),
                                 Padding(
                                  
                                   padding: const EdgeInsets.all(12.0),
                                   child: Text('Look Like Readable English. Many Desktop Publishing Packages And Web Page Editors Now',
                                   textAlign: TextAlign.center,
                                    ),
                                    
                                 ),
                                 
                                 SizedBox(height: 90,),
                                 Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(onPressed: ( ){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              
              style: TextButton.styleFrom(
                 foregroundColor: Colors.white,
                 backgroundColor: Colors.black,
                 minimumSize: const Size(double.infinity, 50),
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))
                  ),
              ), 
              child: Text('Done'),
                 
              ),  
              ),
        
                ],
              ),
            ),
        ]
            ),
      ),
    );
          
  }
}