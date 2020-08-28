//import 'package:delivery_app/Pages/AccountScreen.dart';
import 'package:delivery_app/Pages/CartScreen.dart';
import 'package:delivery_app/Pages/OffersScreen.dart';
import 'package:delivery_app/Pages/ResturantScreen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffEA7E00),
        buttonColor: Color(0xffEA7E00),
      ),
      debugShowCheckedModeBanner: false,
      title: "10 Foods",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final tabs = [
    Resturant(),
    Offer(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xffEA7E00)),
            title: Text(
              "Home",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stars, color: Color(0xffEA7E00)),
            title: Text(
              "Special",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Color(0xffEA7E00)),
            title: Text(
              "Cart",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Color(0xffEA7E00),
        selectedIconTheme: IconThemeData(color: Color(0xffEA7E00)),
      ),
    );
  }
}
