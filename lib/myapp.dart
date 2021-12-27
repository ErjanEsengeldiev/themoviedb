import 'package:flutter/material.dart';
import 'package:flutter_application_youtube/main_widgets/regist/regist_widget.dart';

import 'main_widgets/menu/menu.dart';

class MyApp extends StatefulWidget {
  ColorScheme themecolor = const ColorScheme.dark();
  MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  ColorScheme themecolor = MyApp().themecolor;
  void changeTheme(int theme) {
    setState(() {
      theme == 1
          ? themecolor = const ColorScheme.light()
          : themecolor = const ColorScheme.dark();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/regist',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: themecolor,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black54,
        ),
      ),
      routes: <String, WidgetBuilder>{
        '/regist': (context) => const RegistWidget(),
        '/menu': (context) => InheritForChengeTheme(
              child: const Menu(),
              themeForApp: themecolor,
            ),
      },
    );
  }
}
