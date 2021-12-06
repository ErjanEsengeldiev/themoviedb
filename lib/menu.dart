import 'package:flutter/material.dart';
import 'package:flutter_application_youtube/home.dart';
import 'package:flutter_application_youtube/popup_button.dart';

import 'films.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final List<Widget> _widgetOptions = [
    Home(),
    Films(),
  ];

  int _currentIndex = 0;
  _currentIndexFunc(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name of Project'),
        centerTitle: true,
        actions: [
          PoupButtonForMenu(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _currentIndexFunc,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Films',
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions[_currentIndex],
      ),
    );
  }
}

