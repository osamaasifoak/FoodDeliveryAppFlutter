import 'package:flutter/material.dart';
import 'package:foodorderingapp/contants/Navigation.dart';
import 'package:foodorderingapp/contants/appconstant.dart';
import 'package:foodorderingapp/contants/homelistgridview.dart';
import 'package:carousel_pro/carousel_pro.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new 
     SizedBox(
          height: 200.0,
              child:  Carousel(
              images: [
                NetworkImage('http://www.ca-pizza.com/FoodImages/222.jpg'),
                NetworkImage('http://www.ca-pizza.com/FoodImages/1111111.jpg'),
                ExactAssetImage(ConstantText.slider1)
              ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.lightGreenAccent,
                indicatorBgPadding: 5.0,
                dotBgColor: Colors.red.withOpacity(0.8),
                borderRadius: false,                      
                moveIndicatorFromBottom: 180.0,
                noRadiusForIndicator: false,
                autoplayDuration: Duration(seconds: 5),
            ),
            );
    Widget silverAppBar = 
                  SliverAppBar(
                    expandedHeight: 200.0,
                    floating: false,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                    background: imageCarousel,
                    ),
                    actions: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, Navigate.cart);
                          },
                          child: Icon(
                            Icons.shopping_basket,
                          ),
                        ),
                      ),
                    ],
                  );
                                    
    return Scaffold(
      key: _scaffoldKey,
            body: NestedScrollView(
              headerSliverBuilder: (BuildContext conext,bool innerBoxIsScrolled){
                return <Widget>[
                  silverAppBar,
                ];
              },
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          Center(
              child: Text(
                  ConstantText.homeheader, style: new TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
                    ),
                  ),
          SizedBox(
              child: GridlistView()
              ),            
              ],
            ),
          ),  
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Osama Asif"),
              accountEmail: Text("osama.asif@sybrid.com"),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                backgroundColor:
                Theme.of(context).platform == TargetPlatform.iOS
                    ? Colors.red
                    : Colors.white,
                 child: Text(
                    "O",
                  style: TextStyle(fontSize: 40.0),
                ),
               ),
              ],
          currentAccountPicture: CircleAvatar(
            backgroundColor:
                Theme.of(context).platform == TargetPlatform.iOS
                    ? Colors.blue
                    : Colors.white,
              child:  Image(
                image: new AssetImage(ConstantText.logo),
                 )
              ),
            ),
            ListTile(
              title: new Text(ConstantText.home),
              trailing: Icon(Icons.home),
            ),
            Divider(),
            ListTile(
              title: new Text(ConstantText.restaurants),
              trailing: Icon(Icons.restaurant),
            ),
            Divider(),
            ListTile(
              title: new Text(ConstantText.deals),
              trailing: Icon(Icons.directions_walk),
            ),
            Divider(),
            ListTile(
              title: new Text(ConstantText.orderNow),
              trailing: Icon(Icons.shopping_cart),
            ),
            Divider(),
            ListTile(
              title: new Text(ConstantText.contactus),
              trailing: Icon(Icons.phone),
            ), 
          ],
        ),
      ),
    );
  }
}