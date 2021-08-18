import 'package:flutter/material.dart';
import 'package:papersy/application/home/update_nav_bar.dart';
import 'package:papersy/presentation/feed/feed_page.dart';
import 'package:papersy/presentation/search/search_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UpdateNavBar updateNavBar = UpdateNavBar();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actionsIconTheme: Theme.of(context).iconTheme,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(icon: const Icon(Icons.filter), onPressed: () {}),
          ),
        ],
        title: const Text(
          "Papersy",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: updateNavBar.index,
        builder: (context, int value, child) {
          return IndexedStack(
            index: value,
            children: const [
              FeedPage(),
              SearchPage(),
            ],
          );
        },
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: updateNavBar.index,
        builder: (BuildContext context, int value, Widget? child) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey,
            selectedItemColor: Colors.red,
            currentIndex: value,
            onTap: (value) {
              updateNavBar.changeNavBarItemIndex(value);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Feed"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_rounded), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.upload_file), label: "Upload"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book_sharp), label: "News"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ],
          );
        },
      ),
    );
  }
}
