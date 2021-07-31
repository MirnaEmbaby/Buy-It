import 'package:buyit/colors.dart';
import 'package:flutter/material.dart';

class ItemDisplay extends StatefulWidget {
  const ItemDisplay(
    this.itemImage,
    this.itemName,
    this.itemDescription,
    this.itemPrice,
  );

  final String itemImage;
  final String itemName;
  final String itemDescription;
  final String itemPrice;

  @override
  _ItemDisplayState createState() => _ItemDisplayState(
        itemImage,
        itemName,
        itemDescription,
        itemPrice,
      );
}

class _ItemDisplayState extends State<ItemDisplay> {
  final String itemImage;
  final String itemName;
  final String itemDescription;
  final String itemPrice;

  _ItemDisplayState(
      this.itemImage, this.itemName, this.itemDescription, this.itemPrice);

  @override
  Widget build(BuildContext context) {
    int itemAmount = 1;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: B),
        backgroundColor: W,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                itemImage,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  color: Colors.white70,
                  alignment: Alignment.topLeft,
                  width: 500,
                  height: 150,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        itemName,
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        itemDescription,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\$ " + itemPrice,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 30,
                height: 30,
                child: RaisedButton(
                  padding: EdgeInsets.all(3),
                  onPressed: () {},
                  color: Y,
                  child: Icon(Icons.add),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '$itemAmount',
                style: TextStyle(fontSize: 60),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 30,
                height: 30,
                child: RaisedButton(
                  padding: EdgeInsets.all(3),
                  onPressed: () {},
                  color: Y,
                  child: Icon(Icons.minimize),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text(
              "ADD TO CART",
              style: TextStyle(fontSize: 14, color: W),
            ),
            color: Y,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
