import 'package:flutter/material.dart';
import 'update_screen.dart';


class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       
      body: 
       
           
      
      
           SingleChildScrollView(
             child: Column(
               children: [  Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     IconButton(onPressed: (){}, icon: BackButton()),
                   ],
                 ),
                 Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Column(                 
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                   
                      
                     Center(
                       child: Column(
                         children: [               
                             SizedBox(                   
                       height: 60,
                       width: 60,
                       child:  Image.asset('assets/Group 34202.PNG')),
                   
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
                   ],
                         ),
                     ),
                       SizedBox(height: 30,), 
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text(
                             
                             'OTP',
                             style: TextStyle(
                               fontSize: 24,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                         ],
                       ),
                       SizedBox(height: 1),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Flexible(
                             child: Text(
                               'Look Like Readable English. Many Desktop Publishing Packages',
                   
                               textAlign: TextAlign.start,
                               style: TextStyle(
                                 fontSize: 16,
                                 color: Colors.grey[600],
                               ),
                             ),
                           ),
                         ],
                       ),
                       SizedBox(height: 70),
                   
                     
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         
                         children: [
                           _otpField(_controller1),
                           _otpField(_controller2),
                           _otpField(_controller3),
                           _otpField(_controller4),
                         ],
                       ),
                       SizedBox(height: 90),
                       ElevatedButton(
                         onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateScreen() ));
                         },
                         style: ElevatedButton.styleFrom(
                           minimumSize: Size(double.infinity, 50),
                           backgroundColor: Colors.black,
                           foregroundColor: Colors.white,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4)),
                           ),
                         ),
                         child: Text('Next'),
                       ),
                         
                       
                   
                        Row( 
                               mainAxisAlignment: MainAxisAlignment.center,
                                
                               children: [ Text('Haven`t Got The Email Yet?',),
                   
                               TextButton(onPressed: (){        
                               }, child: Text('Resend Email')),
                             ],
                             )
                     ],
                   ),
                 ),
               ],
             ),
           ),
    );
  }

  Widget _otpField(TextEditingController controller) {
    return Container(
      width: 70,
      height: 50,
      decoration: BoxDecoration(
         borderRadius: BorderRadius.only(topRight: Radius.elliptical(15, 15), bottomLeft: Radius.elliptical(15, 15), bottomRight: Radius.circular(4), topLeft: Radius.circular(4)),
        border: Border.all(color: Colors.black),
      ),
      child: TextField(
        controller: controller,
         onChanged: (value) {
           if (value.length ==1){
            FocusScope.of(context).nextFocus();
           }
         },
         autofocus: true,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
          border: InputBorder.none,
        ),
      ),
    );
  }
}