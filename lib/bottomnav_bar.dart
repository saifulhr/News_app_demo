import 'package:flutter/material.dart';
import 'package:news_app/screen/addpost/addpost_page.dart';
import 'package:news_app/screen/adds/adds_page.dart';
import 'package:news_app/screen/home/home_page.dart';
import 'package:news_app/screen/poll/poll_page.dart';
import 'package:news_app/screen/portfolio/portfolio_page.dart';

class BottomnavBar extends StatefulWidget {
  const BottomnavBar({super.key});

  @override
  State<BottomnavBar> createState() => _BottomnavBarState();
}

class _BottomnavBarState extends State<BottomnavBar> {
  int _selectedIndex = 0;
  final List<Widget> screens = [
    HomePage(),
    AddsPage(),
    AddpostPage(),
    PollPage(),
    PortfolioPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[_selectedIndex],
      floatingActionButton: SizedBox(
        height: 62,
        width: 62,
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              _selectedIndex = 2;
            });
          },
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(color: Colors.white, width: 4),
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedLabelStyle: TextStyle(fontSize: 12, color: Colors.blue),
        unselectedLabelStyle: TextStyle(fontSize: 12, color: Colors.grey),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 24,
              color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/image07.png',
              height: 20,
              width: 20,
              color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
            ),
            label: 'Adds',
          ),
          BottomNavigationBarItem(
            icon: SizedBox.shrink(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/image08.png',
              height: 20,
              width: 20,
              color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
            ),
            label: 'Poll',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 23,
              color: _selectedIndex == 4 ? Colors.blue : Colors.grey,
            ),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}
