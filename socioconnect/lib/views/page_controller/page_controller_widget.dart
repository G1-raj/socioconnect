import 'package:flutter/material.dart';
import 'package:socioconnect/constants.dart';
import 'package:socioconnect/views/chat/chat_list_view.dart';
import 'package:socioconnect/views/home/home_view.dart';
import 'package:socioconnect/views/profile/profile_view.dart';
import 'package:socioconnect/views/search/search_view.dart';

class PageControllerWidget extends StatefulWidget {
  const PageControllerWidget({super.key});

  @override
  State<PageControllerWidget> createState() => _PageControllerWidgetState();
}

class _PageControllerWidgetState extends State<PageControllerWidget> {
  int currIndex = 0;
  late final PageController _pageController;

  final List<Widget> pages = [
    HomeView(),
    ChatListView(),
    SearchView(),
    ProfileView(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget buildIcon(IconData icon, bool isActive) {
    return isActive
        ? Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromRGBO(37, 95, 76, 1),
            ),
            child: Icon(icon, color: Colors.white),
          )
        : Icon(icon);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            currIndex = index;
          });
        },
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: appTheme,
        currentIndex: currIndex,
        onTap: (value) {
          _pageController.animateToPage(
            value,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
          setState(() {
            currIndex = value;
          });
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: buildIcon(Icons.home_outlined, currIndex == 0),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: buildIcon(Icons.chat_outlined, currIndex == 1),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: buildIcon(Icons.search_outlined, currIndex == 2),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: buildIcon(Icons.person_outline, currIndex == 3),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
