import 'package:anbessafit/presentation/screens/about_us.dart';
import 'package:anbessafit/presentation/screens/home.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Abe Kebe'),
           accountEmail: Text('Abekebekeasela@gmail.com'),
           currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.asset('assets/dummyMan.jpg'),),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage('assets/download.jpg'),
                fit: BoxFit.cover,
                ),
                
            ),
       ),
       
       ListTile(
          leading: Icon(Icons.album_outlined),
          title: Text('About Us'),
          onTap: () { Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUs()),
              );},
       ),
       ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Exit'),
          onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePageHome()),
              );},
       ),

       ],
    
      ),
    );
  }
}