import 'package:flutter/material.dart';
import 'package:house/auth/sign_in_up_screens.dart';

class OnBondingScreen extends StatefulWidget {
  const OnBondingScreen({super.key});

  @override
  State<OnBondingScreen> createState() => _OnBondingScreenState();
}

class _OnBondingScreenState extends State<OnBondingScreen> {

final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "title": "Welcome To Eagles Cars",
      "description": "Your Trusted Ride, Anytime And Anywhere In Africa.",
      "image": "assets/Group 34211.png",
    },
    {
      "title": "Easy Ride Booking",
      "description": "Book Rides Easily With Just A Few Taps.",
      "image": "assets/Group 34212@2x.png",
    },
    {
      "title": "Real-Time Tracking",
      "description": "Track Your Ride In Real-Time And Stay Informed.",
      "image": "assets/Group 34213.png",
    },
    {
      "title": "Safety And Support",
      "description": "Your Safety Is Our Priority, With In-App Emergency Support.",
      "image": "assets/Group 34214.png",
    },
  ];

  void _nextPage() {
    if (_currentIndex < onboardingData.length - 1) {
      _controller.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.ease);
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SignInUpScreens()));
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemCount: onboardingData.length,
              itemBuilder: (context, index) {
                return OnboardingPage(
                  title: onboardingData[index]["title"]!,
                  description: onboardingData[index]["description"]!,
                  image: onboardingData[index]["image"]!,
                );
              },
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              onboardingData.length,
              (index) => buildDot(index),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () { 
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignInUpScreens()));
                     
                  },
                   style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(20, 20), bottomLeft: Radius.elliptical(20, 20), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))),
                        backgroundColor: const Color.fromARGB(219, 255, 255, 255),
                        side: BorderSide(width: 1)
                      ), 
                    
                  child: Text("Skip", style: TextStyle(color:  const Color.fromARGB(255, 16, 16, 16)),),
                ),
                ElevatedButton(
                  onPressed: _nextPage,
                  style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(20, 20), bottomLeft: Radius.elliptical(20, 20), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))),
                        backgroundColor: const Color.fromARGB(219, 41, 41, 41),
                      ), 
                  child: Text(_currentIndex == onboardingData.length - 1
                      ? "Get Started "   
                      : "Next", style: TextStyle(color: Colors.white),  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDot(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: _currentIndex == index ? 12 : 8,
      height: _currentIndex == index ? 12 : 8,
      decoration: BoxDecoration(
        color: _currentIndex == index ? Colors.black : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const OnboardingPage({super.key, 
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image, height: 250, width: 1000,),  
          SizedBox(height: 30),
          
          Text(
            
            title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}









  