import 'package:flutter/material.dart';
import 'package:foodorderingapp/contants/Navigation.dart';

class GridlistView extends StatefulWidget {
  @override
  _GridlistViewState createState() => _GridlistViewState();
}

class _GridlistViewState extends State<GridlistView> {
      var productList = [
            {
      "name": "PIZZA",
      "picture": "http://www.ca-pizza.com/FoodImages/111111.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "ME TIME",
      "picture": "http://www.ca-pizza.com/FoodImages/33.jpg",
      "old_price": 120,
      "price": 85,
    },
        {
      "name": "DISCOUNTED DEALS",
      "picture": "http://www.ca-pizza.com/FoodImages/2222.jpg",
      "old_price": 120,
      "price": 85,
    },
        {
      "name": "HALF N HALF",
      "picture": "http://www.ca-pizza.com/FoodImages/22.jpg",
      "old_price": 120,
      "price": 85,
    },
       {
      "name": "DESSERT",
      "picture": "http://www.ca-pizza.com/FoodImages/333.jpg",
      "old_price": 120,
      "price": 85,
    },
      {
      "name": "BEVERAGES",
      "picture": "http://www.ca-pizza.com/FoodImages/11.jpg",
      "old_price": 120,
      "price": 85,
    },
      {
      "name": "SIDELINE SIDELINE SIDELINE",
      "picture": "http://www.ca-pizza.com/FoodImages/3.jpg",
      "old_price": 120,
      "price": 85,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProd(
            prodName: productList[index]['name'],
            prodPricture: productList[index]['picture'],
            prodOldPrice: productList[index]['old_price'],
            prodPrice: productList[index]['price'],
          );
         }
       );
    }
}
class SingleProd extends StatelessWidget {
  SingleProd({
    this.prodName,
    this.prodPricture,
    this.prodOldPrice,
    this.prodPrice,
  });

  final prodName;
  final prodOldPrice;
  final prodPrice;
  final prodPricture;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Hero(       
        tag: prodName,
          child: Material(
            borderRadius: BorderRadius.circular(30.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Navigate.menulist);
              },
              child: GridTile(
                  footer: Container(
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white54,
                        ),
                    
                    child: SizedBox(
                        child: ListTile(
                          // leading: Text(
                          //   prodName,
                          //   style: TextStyle(fontWeight: FontWeight.bold),
                          //   overflow: TextOverflow.ellipsis,
                          //   maxLines: 1,
                          //   softWrap: false,
                          // ),
                          title: Text(
                            prodName,
                            style: TextStyle(fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                          ),
                          // subtitle: Text(
                          //   "\Rs$prodOldPrice",
                          //   style: TextStyle(
                          //       color: Colors.black54,
                          //       fontWeight: FontWeight.w800,
                          //       decoration
                          //           :TextDecoration.lineThrough),
                          // ),
                      ),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(10.0),
                    child: Image.network(
                      prodPricture,
                      fit: BoxFit.cover,
                     )
                  ),
                ),
              )
            ),
          )
      );
    }
  }