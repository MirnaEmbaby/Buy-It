import 'package:flutter/material.dart';

class ItemData {
  final String itemImage;
  final String itemName;
  final String itemDescription;
  final String itemPrice;

  ItemData(
    @required this.itemImage,
    @required this.itemName,
    @required this.itemDescription,
    @required this.itemPrice,
  );
}
