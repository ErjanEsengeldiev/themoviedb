import 'package:flutter/material.dart';
import 'package:flutter_application_youtube/main_widgets/menu/home_widgets/home.dart';
import 'package:flutter_application_youtube/popup_button.dart';
import 'film_widgets/films.dart';

//Виджет Главный в приложении
class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final List<Widget> _widgetOptions = [
    const Home(),
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
        title: const Text('Name of Project'),
        centerTitle: true,
        actions: const [
          PoupButtonForMenu(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
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

class InheritForChengeTheme extends InheritedWidget {
  final ColorScheme themeForApp;
  // ignore: use_key_in_widget_constructors
  const InheritForChengeTheme({
    required this.themeForApp,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritForChengeTheme oldWidget) {
    return themeForApp != oldWidget.themeForApp;
  }
}
