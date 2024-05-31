import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  
  const CustomScaffold({super.key, this.child});
  final Widget? child;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation :0,
         iconTheme: IconThemeData(color: Colors.white),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/gymmm.jpg',
            fit: BoxFit.cover,
            width:double.infinity,
            height:double.infinity,
          ),
           SafeArea(
            child:child!)
        ],),
    );
  }
  }

 
