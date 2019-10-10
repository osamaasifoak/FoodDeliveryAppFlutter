import 'package:flutter/material.dart';
import 'package:foodorderingapp/contants/appconstant.dart';

class MenuList extends StatefulWidget {
  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  int count = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: count,
          itemBuilder: (BuildContext context,count){
            return Container(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.15,
                      child: Card(
                        elevation: 10.0,
                         child: Center(
                           child: ListTile(
                            leading: new CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.black12,
                              backgroundImage: AssetImage(ConstantText.slider1),
                            ),
                            title: new Text("Pizza"),
                            subtitle: new Text("this is a sample text"),
                            trailing: SizedBox(
                              height: 100,
                               width: 100,
                                child: Center(
                                 child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    new Icon(
                                      Icons.arrow_forward_ios
                                    )
                                  ],
                                ),
                              ),
                            ),
                        ),
                         ),
                      ),
                    ),
                   SizedBox(
                      height: MediaQuery.of(context).size.height*0.15,
                       child: Card(
                        elevation: 10.0,
                         child: Center(
                          child: ListTile(
                           leading: new CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.black12,
                            backgroundImage: AssetImage(ConstantText.slider1),
                            ),
                            title: new Text("Pizza"),
                            subtitle: new Text("this is a sample text"),
                            trailing: SizedBox(
                              height: 100,
                               width: 100,
                                child: Center(
                                 child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    new Icon(
                                      Icons.arrow_forward_ios
                                    )
                                  ],
                                ),
                              ),
                            ),
                        ),
                         ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
      ),
    );
  }
}