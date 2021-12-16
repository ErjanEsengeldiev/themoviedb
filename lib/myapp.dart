import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_youtube/regist_widget.dart';


import 'menu.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/regist',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black54,
          
          
          
        ),
      ),
      routes: <String, WidgetBuilder>{
        '/regist': (context) => const RegistWidget(),
        '/menu': (context) => const Menu(),
      },
    );
  }
}
