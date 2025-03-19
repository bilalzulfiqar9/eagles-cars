 import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'noti.dart';
import 'sett.dart';
import 'desti.dart';
 
 
  class HomeScreen extends StatefulWidget {
    const HomeScreen ({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late GoogleMapController mapController;
  final TextEditingController pickupController = TextEditingController();
  final TextEditingController destinationController = TextEditingController();
  String selectedRideType = "Solo";

//  void _onMapCreated(GoogleMapController controller) {
//    mapController = controller;
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                Row(
                  children: [                    
                    CircleAvatar(
                      
                      backgroundImage: NetworkImage('assets/Frame 56.png'),  
                      radius: 20,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome Back", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                        Text("Bilal Zulfiqar", style: TextStyle(fontSize: 13, color: Colors.grey)),
                      ],
                    ),
                    Spacer(),
                    IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Noti() ));
                      }, icon: Icon(Icons.notification_add)),
                       IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Setti() ));
                       }, icon: Icon( Icons.settings)),
                  ],
                ),
                SizedBox(height: 20),



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
                                  
                                    hintText: 'Where You Like To Go?',
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
          
             // Map
           // Container(
           //   height: 315,
           //  
           //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), boxShadow: [
           //     BoxShadow(color: Colors.black12,),
           //      
           //   ]),
           //    
            //   ClipRRect(
            //    borderRadius: BorderRadius.circular(16),
            //    child: GoogleMap(
            //      onMapCreated: _onMapCreated,
            //      initialCameraPosition: CameraPosition(
            //        target: LatLng(37.7749, -122.4194),  
            //        zoom: 12,
            //      ),
            //      markers: {
            //        Marker(
            //          markerId: MarkerId('pickup'),
            //          position: LatLng(37.7749, -122.4194),
            //          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
            //        ),
            //      },
            //    ),
            //  ),
           //  ),
                SizedBox(height: 20),
          
                // Input Fields
                TextField(
                  controller: pickupController,
                  decoration: InputDecoration(
                    hintText: "Enter Pickup Location",
                    prefixIcon: Icon(Icons.location_pin),
                    border: OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))),
                  ),
                ),
                SizedBox(height: 10),
          
                TextField(
                  
                  controller: destinationController,
                  maxLines: 4,
                  decoration: InputDecoration( 
                    hintText: "Enter Destination",
                    border: OutlineInputBorder( borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))),
                    focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4)))
                  ),
                ),
                SizedBox(height: 10),
          
                // Ride Selection
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        value: selectedRideType,
                        items: ["Solo", "Carpool"].map((String type) {
                          return DropdownMenuItem<String>(
                            value: type,
                            child: Text(type),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedRideType = value!;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4)),
                        
                       ),
                       focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))),
                      ),
                    ),),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      
                      style: ElevatedButton.styleFrom(  minimumSize: Size( 10, 50) , side: BorderSide(color: const Color.fromARGB(213, 37, 36, 36), width: 1), shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4)))),
                    child: Text("View Price",style: TextStyle(color:  const Color.fromARGB(217, 36, 36, 36)),),
                    
                    ),
                  ],
                ),
                SizedBox(height: 20),
          
                // Promo Banner
                Container(
                  padding: EdgeInsets.all(16),
                  height: 110,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(229, 36, 36, 36),
                    borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Get 10% Off Your First Ride!",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Image.asset('assets/image 1.png', width: 135),  
                    ],
                  ),
                ),
                SizedBox(height: 20),
          
                // Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Desti()));
                      },
                      
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))),
                        backgroundColor: const Color.fromARGB(219, 33, 33, 33),
                      ),
                      child: Text("Home",style: TextStyle(color:  Colors.white),),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        
                      },
                       
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))),
                        backgroundColor: const Color.fromARGB(255, 252, 251, 251),
                        side: BorderSide(width: 1),
                      ),
                      
                       child: Text("Emergency SOS", style: TextStyle(color:  const Color.fromARGB(255, 47, 47, 47)),),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}