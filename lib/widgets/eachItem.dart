import 'package:buyit/screens/itemDisplay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EachItem extends StatelessWidget {
  final String itemImage;
  final String itemName;
  final String itemDescription;
  final String itemPrice;

  const EachItem(
    this.itemImage,
    this.itemName,
    this.itemDescription,
    this.itemPrice,
  );

  void selectItem(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return ItemDisplay(
        itemImage,
        itemName,
        itemDescription,
        itemPrice,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectItem(context),
      borderRadius: BorderRadius.circular(5),
      child: Stack(
        children: [
          Image.asset(
            itemImage,
            fit: BoxFit.cover,
            width: 200,
            height: 200,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              color: Colors.white70,
              alignment: Alignment.topLeft,
              width: 180,
              height: 50,
              child: Column(
                children: [
                  Text(
                    itemName,
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "\$ " + itemPrice,
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
