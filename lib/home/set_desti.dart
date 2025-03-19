import 'package:flutter/material.dart';

class SetDesti extends StatelessWidget {
  const SetDesti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Set Destnation",
            style: TextStyle(color: Color.fromARGB(224, 11, 10, 10) , fontWeight:  FontWeight.bold, fontSize: 18)),
         leading: IconButton(onPressed: (){}, icon: BackButton()),
         centerTitle: true,         
        elevation: 0,),

        body: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
              
              padding: const EdgeInsets.all(16.0),
              child: Container(
                
                padding: EdgeInsets.all(30),
                
                        height: 200,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(229, 36, 36, 36),
                          borderRadius: BorderRadius.circular(12),
                        ),
              ),
            ),
          ],
        ),
    );
  }
}