import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'set_desti.dart';

class Desti extends StatefulWidget {
  const Desti({super.key});

  @override
  State<Desti> createState() => _DestiState();
}

class _DestiState extends State<Desti> {
  late GoogleMapController mapController;
  String mostRecent ='Home(123 Main St)';

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Set Destnation",
            style: TextStyle(color: Color.fromARGB(224, 11, 10, 10) , fontWeight:  FontWeight.bold, fontSize: 18)),
         leading: IconButton(onPressed: (){}, icon: BackButton()),
         centerTitle: true,
           
         backgroundColor: Colors.white,
        elevation: 0,),
        body: 
            Padding(
            
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            
            child: SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    
                    TextField(
                           
                          decoration: InputDecoration(
                            hintText: "Use Current Loctaion",
                            prefixIcon: Icon(Icons.location_pin),
                            contentPadding: EdgeInsets.all(0.5),
                            border: OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))),
                          ),
                        ),
                
                   SizedBox(height: 20,),
                    
                        
                   Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                        
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 300,
                                width: 322,
                                child: Image.asset('assets/Map.png'),
                              ),
                        
                              Positioned(
                                top: 16,
                                right: 16,
                                left: 16,
                                 child: Container(
                                  
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(214, 78, 77, 77),
                                    borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4)),
                                    
                                    ),
                        
                                    child: TextField(
                                      
                                      
                                      decoration: InputDecoration(
                                        
                                        hintText: 'Where You Like To Go?',fillColor: Colors.white,
                                        hintStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                           
                                        ),
                                        prefixIcon: Icon(Icons.search),
                                        prefixIconColor: Colors.white,
                                        suffixIcon: Icon(Icons.filter),
                                        suffixIconColor: Colors.white,
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(12),
                                      ),
                                    ),
                                  ),
                                 ),
                        
                                 
                                 Positioned(
                                  top: 155,
                                  left: 155,
                                  child: Image.asset('assets/Location.png')),
                        
                        
                                  Positioned(
                                  top: 158,
                                  left: 172,
                                  child: Image.asset( 'assets/Shape.png')),
                        
                                   Positioned(
                                   top: 164,
                                   left: 179,
                                   child: Image.asset('assets/Oval.png'))
                            ],
                          ),
                        )
                      ],
                    ),
                        
                        
                      SizedBox(height: 20,),
                      Text('Recent Locations', style: TextStyle(fontWeight: FontWeight.w500),),
                       
                
                       SizedBox(height: 10,),
                       Row(
                         children: [
                           Expanded(
                            
                                child: DropdownButtonFormField<String>(
                                  
                                  value: mostRecent,
                                  items: ["Home(123 Main St)",].map((String type) {
                                    return DropdownMenuItem<String>(
                                      value: type,
                                      child: Text(type),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      mostRecent= value!;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4)),
                                      
                                  ),
                                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))),
                                ),
                              ),),
                         ],
                       ),
                       SizedBox(height: 10,),
                       Text('Destination Suggestions',style: TextStyle(fontWeight: FontWeight.w500),),
                      SizedBox(height: 10,),
                       TextField(
                           
                          decoration: InputDecoration(
                            hintText: "City Mall",
                             contentPadding: EdgeInsets.only(left: 15),
                            border: OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))),
                             focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))),
                          ),
                        ),
                        SizedBox(height: 60,),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SetDesti() ));
                            },
                             
                            style: ElevatedButton.styleFrom(
                               minimumSize: const Size(double.infinity, 50),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))),
                              backgroundColor: const Color.fromARGB(215, 28, 28, 28),
                            ),
                             child: Text("Confirm", style: TextStyle(color:  const Color.fromARGB(255, 251, 250, 250)),),),
                   ],
                ),
              ),
            ),
          ),
        );
    
  }
}