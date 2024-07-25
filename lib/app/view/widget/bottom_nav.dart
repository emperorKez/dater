


import 'package:dater/chat/view/screen/chat.dart';
import 'package:dater/discover/view/screen/discover_screen.dart';
import 'package:dater/discover/view/screen/user_switch_card.dart';
import 'package:dater/likes/view/screen/likes.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key, required this.activeIndex});
  final int activeIndex;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  late int _currentIndex;

  @override
  Widget build(BuildContext context) { 
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xfff5f5f5),
        currentIndex: widget.activeIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.location_pin), label: 'Location'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Likes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;

              String activeState = _currentIndex.toString();
              switch (activeState) {
                case '0':
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const DiscoverScreen()));
                  break;
                case '1':
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LikesScreen()
                              )); 
                  break;
                case '2':
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserCardScreen()
                              )); 
                  break;
                case '3':
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatScreen()
                              )); 
                  break;
                case '4':
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DiscoverScreen()
                              )); 
                  break;
          
              }
            },
          );
        });
  }
}

//class BottomNavBar {
//
//}
