import 'package:flutter/material.dart';
import "package:foodorderingapp/contants/appconstant.dart";
import "package:foodorderingapp/contants/Navigation.dart";
import 'package:foodorderingapp/contants/pages/MenuList.dart';
import 'package:foodorderingapp/contants/pages/cart.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red, 
        primaryColor: Colors.red,
        accentColor: Colors.red,
        ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        Navigate.home : (context) => Home(),
        Navigate.cart : (context) => Cart(),
        Navigate.menulist : (context) => MenuList(),
      },
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
    Future.delayed(
      Duration(seconds: 2),(){
        Navigator.pushReplacementNamed(context, Navigate.home);
       
      }
    );
  }

@override
  void dispose() {
   super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Container(
                    width: 180.0,
                    height: 180.0,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: ExactAssetImage(ConstantText.logo)
                      )
                    ),
                  ),
                )
              ],
            )
          ],
        ),
    );
  }
}
