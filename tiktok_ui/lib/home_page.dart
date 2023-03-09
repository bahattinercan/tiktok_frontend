import 'package:flutter/material.dart';
import 'package:tiktok_ui/pages/home.dart';
import 'package:tiktok_ui/pages/inbox.dart';
import 'package:tiktok_ui/pages/profile.dart';
import 'package:tiktok_ui/pages/reels.dart';
import 'package:tiktok_ui/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  final List<Widget> _pages = [
    UserHomePage(),
    UserSearchPage(),
    UserReelsPage(),
    UserInboxPage(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded), label: "Reels"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_rounded), label: "Inbox"),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: "Profile"),
        ],
      ),
    );
  }
}
