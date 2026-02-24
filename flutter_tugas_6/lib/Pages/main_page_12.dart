import 'package:flutter/material.dart';
import 'home_page_12.dart';
import 'about_page_12.dart';

class MainPageDay12 extends StatefulWidget {
  const MainPageDay12({super.key});

  @override
  State<MainPageDay12> createState() => _MainPageDay12State();
}

class _MainPageDay12State extends State<MainPageDay12> {
   int _selectedIndex = 0;

  final List<Widget> listWidget = [
    HomePageDay12(),
    AboutPageDay12(),
  ];
    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 48, 141),
      ),//Appbar
      
      body: listWidget[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor:  Color.fromARGB(255, 255, 48, 141),
        unselectedItemColor: Colors.grey,
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "About Page",
          ),
        ],
      ),
    );
  }
}