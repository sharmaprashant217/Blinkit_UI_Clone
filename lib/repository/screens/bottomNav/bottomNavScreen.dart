import 'package:blinkit_series/repository/screens/cart/cartScreen.dart';
import 'package:blinkit_series/repository/screens/category/categoryScreen.dart';
import 'package:blinkit_series/repository/screens/home/homeScreen.dart';
import 'package:blinkit_series/repository/screens/print/printScreen.dart';
import 'package:blinkit_series/repository/widgets/uiHelper.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: UiHelper.CustomImage(img: "home1.png"),label: "Home"),
        BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: "shoppingBag1.png"),label: "Cart"),
        BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: "category1.png"),label: "Category"),
        BottomNavigationBarItem(icon: UiHelper.CustomImage(img: "printer1.png"),label: "Print")
      ],type: BottomNavigationBarType.fixed,currentIndex: currentIndex,onTap: (index){
        setState(() {
          currentIndex=index;
        });
      },),
    );
  }
}
