import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );

        Future.delayed(Duration(milliseconds: 500), () {
          Fluttertoast.showToast(
            msg: "Page switched",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.black,
            textColor: Colors.white,
          );
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Image.network(
          'https://scontent.flhe13-1.fna.fbcdn.net/v/t39.30808-1/306922752_468610585306840_6638435582987535517_n.png?stp=dst-png_s200x200&_nc_cat=103&ccb=1-7&_nc_sid=2d3e12&_nc_eui2=AeEqvcMUJAOc-eJAlq-h4o9N9UbNDTySYxT1Rs0NPJJjFO2YbicIdkEhMJZcucrvcCkq67n34t9MeJx_3re2B_sb&_nc_ohc=veo6YyKljhkQ7kNvgEEkcWD&_nc_oc=AdjV9_uNa77La1GSAoF8PYXVcbeuWvM9vWk1uPeALYVxVHbF5SOm4c2_Thr9BfuySRU&_nc_zt=24&_nc_ht=scontent.flhe13-1.fna&_nc_gid=AAGNN2ZOrNotQEl6ybP_CVp&oh=00_AYAkT8bfCSajH8IfkDY2H_AVsQZYLKAUGwtNGpeQ00H6gQ&oe=67B0C761',
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Doctor Profile")),
      body: Center(
        child: Text(
          "Doctor Profile",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
