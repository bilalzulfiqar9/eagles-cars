import 'package:flutter/material.dart';

 class Noti extends StatelessWidget {
  Noti({super.key});

   

  final List<Map<String, dynamic>> notifications = [
    {
      'title': 'Ride Completed',
      'message': 'Your Ride With Driver Alex Was Completed Successfully.',
      'time': '2 Min Ago',
      'icon':Icon(Icons.check_circle, size: 14,),
      'noti': 'Notification',
      'icon1':Icon(Icons.notification_add, size: 14,),
      'icon2' : Icon(Icons.timelapse_outlined, size: 14,),
    },
    {
      'title': 'Driver Arrived',
      'message': 'Your Driver Has Arrived At Your Pickup Location.',
      'icon':Icon(Icons.local_taxi , size: 14,),
      'time': '10 Min Ago',
      'noti': 'Notification',
      'icon1':Icon(Icons.notification_add, size: 14,),
      'icon2' : Icon(Icons.timelapse_outlined, size: 14,),
    },
    {
      'title': 'Promotion',
      'message': 'Get 15% Off On Your Next Ride!',
      'icon':Icon(Icons.hail_rounded , size: 14,),
      'time': '1 Hour Ago',
      'noti': 'Notification',
      'icon1':Icon(Icons.notification_add, size: 14,),
      'icon2' : Icon(Icons.timelapse_outlined, size: 14,),
    },
    {
      'title': 'Safety Alert',
      'message': 'New Safety Feature Added. Check It Out!',
      'icon':Icon(Icons.taxi_alert_sharp , size: 14,),
      'time': 'Yesterday',
      'noti': 'Notification',
      'icon1':Icon(Icons.notification_add, size: 14,),
      'icon2' : Icon(Icons.timelapse_outlined, size: 14,),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(250, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(250, 255, 255, 255),
        title: const Text("Notification's",
            style: TextStyle(color: Color.fromARGB(224, 11, 10, 10) , fontWeight:  FontWeight.bold, fontSize: 18)),
         leading: IconButton(onPressed: (){}, icon: BackButton()),
         centerTitle: true,
           
         
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return NotificationCard(
                  iconWidget2:notification['icon2'],
                  iconWidget1:notification['icon1'],
                  noti:notification['noti'],
                  iconWidget:notification['icon'],
                  title:notification['title'],
                  message: notification['message'],
                  time: notification['time'],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))
                ),
              ),
              onPressed: () {},
              child: const Text("Clear All",
                  style: TextStyle(fontSize: 16, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String title;
  final String message;
  final String time;
  final Widget iconWidget;
  final String noti;
  final Widget iconWidget1;
  final Widget iconWidget2;
   
  const NotificationCard({
    super.key,
    
    required this.title,
    required this.message,required this.iconWidget2,
    required this.time, required this.iconWidget,required this.noti, required this.iconWidget1,
    
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 255, 255, 255),
      elevation: 0,
      
      shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4)),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                iconWidget1,
                SizedBox(width: 5,),
                Text(noti, style: const TextStyle(
                        fontSize: 10,     color: Color.fromARGB(255, 49, 49, 49))),
                        SizedBox(width: 8,),
                iconWidget,
                SizedBox(width: 5,),
                Text(                
                  title,
                    style: const TextStyle(
                        fontSize: 10,     color: Color.fromARGB(255, 49, 49, 49))),             
              ],
            ),
            const SizedBox(height: 10),
            Text(message,
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
            const SizedBox(height: 10),
            Row(
              children: [
                iconWidget2,
                Text(time, style: TextStyle(color: Colors.grey.shade600, fontSize:10)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}