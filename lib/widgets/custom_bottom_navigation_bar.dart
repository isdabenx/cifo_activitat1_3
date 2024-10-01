import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Inici",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: "Cercar",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.local_grocery_store),
        label: "Botiga",
      )
    ]);
  }
}
