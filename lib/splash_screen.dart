import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tiny_cloud_app/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>HomePage()));
    });
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        
        children: [
          Padding(
            padding: const EdgeInsets.only(left:280),
            child: Image.asset('images/top.png'),
          ),
          Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom:70),
            child: Image.asset('images/splashcloud.png'),
          ),
          
          
        ),
        Text('Partner App',style: TextStyle(color: Colors.purpleAccent,fontSize: 25),),
         Padding(
            padding: const EdgeInsets.only(right:330),
            child: Image.asset('images/bottom.png'),
          ),
        
        ],
      ),
    );
  }
}