import 'package:flutter/material.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer()
  {
    Timer (const Duration(seconds: 3), () async {
      //send user to home screen
      Navigator.push(context, MaterialPageRoute(builder:(c)=> MainScreen()),);
    });//Timer Mainscreen
  }

  @override
  void initState(){
    super.initState();
    startTimer();
  }
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.asset("images/1.jpg"),
            const Text(
              "HooD Ride",
              style: TextStyle(
                fontsize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),


          ],
        ),

      ),
    );
  }
}
