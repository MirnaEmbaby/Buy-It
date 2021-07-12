import 'package:buyit/items.dart';
import 'package:buyit/widgets/eachItem.dart';
import 'package:flutter/material.dart';

class ShoesScreen extends StatelessWidget {
  final Color Y;
  final Color LY;
  final Color B;

  const ShoesScreen(this.Y, this.LY, this.B);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: items
          .map((itemData) => EachItem(
                itemData.itemImage,
                itemData.itemName,
                itemData.itemDescription,
                itemData.itemPrice,
                Y,
                LY,
                B,
              ))
          .toList(),
    );
  }
}
