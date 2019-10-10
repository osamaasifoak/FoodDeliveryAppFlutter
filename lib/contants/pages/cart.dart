import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  // final Widget silverAppBar;
  // Cart(this.silverAppBar);
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
          body: Center(
        child: new Text("No items in cart"),
        
      ),
     floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.done),
        ),
    );
  }
}