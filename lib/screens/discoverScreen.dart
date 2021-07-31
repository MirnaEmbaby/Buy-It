import 'package:buyit/colors.dart';
import 'package:buyit/screens/jacketsScreen.dart';
import 'package:buyit/screens/shoesScreen.dart';
import 'package:buyit/screens/trousersScreen.dart';
import 'package:buyit/screens/tshirtsScreen.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  DiscoverScreen();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "DISCOVER",
            style: TextStyle(
              color: B,
            ),
          ),
          backgroundColor: W,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: B,
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Y,
            labelColor: B,
            unselectedLabelColor: Colors.black26,
            tabs: [
              Tab(
                text: ("Jackets"),
              ),
              Tab(
                text: ("Trousers"),
              ),
              Tab(
                text: ("T-shirts"),
              ),
              Tab(
                text: ("Shoes"),
              ),
            ],
          ),
        ),
        backgroundColor: W,
        body: TabBarView(
          children: [
            JacketsScreen(),
            TrousersScreen(),
            TshirtsScreen(),
            ShoesScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(
                "test",
                style: TextStyle(color: B, fontSize: 14),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(
                "test",
                style: TextStyle(color: B, fontSize: 14),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(
                "test",
                style: TextStyle(color: B, fontSize: 14),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(
                "test",
                style: TextStyle(color: B, fontSize: 14),
              ),
            ),
          ],
          unselectedIconTheme: IconThemeData(color: B),
          selectedIconTheme: IconThemeData(color: Y),
        ),
      ),
    );
  }
}
