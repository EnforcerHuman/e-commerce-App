import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int)? onItemTapped;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Image.asset('assets/images/Home.png'), label: 'Home'),
        BottomNavigationBarItem(
            icon: Image.asset('assets/images/cart.png'), label: 'cart'),
        BottomNavigationBarItem(
            icon: Image.asset('assets/images/my_order.png'), label: 'my order'),
        BottomNavigationBarItem(
            icon: Image.asset('assets/images/my_order.png'), label: 'account'),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: onItemTapped,
    );
  }
}
