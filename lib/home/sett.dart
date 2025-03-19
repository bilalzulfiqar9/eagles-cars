import 'package:flutter/material.dart';
import 'package:house/get_started/on_bonding_screen.dart';
class Setti extends StatelessWidget {
  const Setti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(250, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(250, 255, 255, 255),
        scrolledUnderElevation: 0,
        title: const Text("Settings",
            style: TextStyle(color: Color.fromARGB(224, 11, 10, 10) , fontWeight:  FontWeight.bold, fontSize: 18)),
         leading: IconButton(onPressed: (){}, icon: BackButton()),
         centerTitle: true,
           
         
        elevation: 0,),

        



      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        
        children: [
          
          SizedBox(height: 10,),
          SettingsTile(icon: Icons.account_circle,   
           subtitle: 'Update Name, Email, Phone Number, Profile Photo', 
           title: 'Profile Management',
           onTap: (){},),

           SettingsTile(icon: Icons.notifications, onTap: (){},
            subtitle: 'Manage Your Notification Preference',
             title: 'Notification Setting'),
          SettingsTile(icon: Icons.lock, onTap: (){},
           subtitle: 'Control Your Privacy And Location Sharing',
            title: 'Privacy Setting'),
            SettingsTile(icon: Icons.payment, onTap: (){}, 
            subtitle: 'Manage Your Saved Payment Methods',
             title: 'Payment Settings'),
            SettingsTile(icon: Icons.language, onTap: (){}, 
            subtitle: 'Language, Theme And Other Preference',
             title:' Language' ),
             SettingsTile(icon: Icons.help_outline, onTap: (){},
              subtitle: 'Access FAQS, Contact Support, Or Send Feeback', title: 'Help & Support'),
              SettingsTile(icon: Icons.gavel, onTap: (){}, 
              subtitle: 'Terms & Conditions Privacy Policy, App Version', 
              title: 'Legal Information'),
              SizedBox(height: 70,),
              SettingsTile(icon: Icons.logout, onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => OnBondingScreen()));
              }, 
              subtitle: 'Security Log Out Of The App', title: 'Logout',
              isLogout: true,)
        ],
      ),),
        
        
    );
  }
}

class SettingsTile extends StatelessWidget{
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool isLogout;

  const SettingsTile(
    {
      super.key,
      required this.icon,
      this.isLogout = false,
      required this.onTap,
      required this.subtitle,
      required this.title,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Card(
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.elliptical(25, 25), bottomLeft: Radius.elliptical(25, 25), bottomRight: Radius.circular(4), topLeft: Radius.circular(4))),
     elevation: 0,
     color: Colors.white,
     margin: EdgeInsets.only(bottom: 12),
     child: ListTile(
      leading:  Container( height: 30,width: 30, decoration: BoxDecoration(
        color: const Color.fromARGB(255, 233, 232, 232),
        borderRadius: BorderRadius.only(topRight: Radius.elliptical(7, 7), bottomLeft: Radius.elliptical(7, 7), bottomRight: Radius.circular(2), topLeft: Radius.circular(2)),
      ), child: Icon(icon, color: const Color.fromARGB(207, 11, 11, 11),)),
      title: Text(title,style: TextStyle(
        fontSize: 15,
        color: const Color.fromARGB(215, 0, 0, 0),
        fontWeight: FontWeight.w500,
      ),),
      subtitle: Text(subtitle, style: TextStyle(
        fontSize: 10,
      ),),
      onTap: onTap,
     ),
    );
  }
}

 