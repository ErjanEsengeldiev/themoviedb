import 'package:flutter/material.dart';
import 'package:flutter_application_youtube/colors/colors.dart';
import 'package:flutter_application_youtube/myapp.dart';

//Влкадка Settings В AppBar
class PoupButtonForMenu extends StatefulWidget {
  const PoupButtonForMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<PoupButtonForMenu> createState() => _PoupButtonForMenuState();
}

class _PoupButtonForMenuState extends State<PoupButtonForMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.settings),
      itemBuilder: (context) => [
        PopupMenuItem(
          onTap: () {
            setState(() {
              context.findAncestorStateOfType<MyAppState>()?.changeTheme(1);
            });
          },
          child: Row(
            children: const [
              Icon(
                Icons.light,
                color: Colors.black,
              ),
              Text('Change Theme to light'),
            ],
          ),
          value: 1,
        ),
        PopupMenuItem(
          onTap: () {
            setState(() {
              
              context.findAncestorStateOfType<MyAppState>()?.changeTheme(2);
              
            });
          },
          child: Row(
            children: const [
              Icon(
                Icons.dark_mode,
                color: Colors.black,
              ),
              Text('Change Theme to dark')
            ],
          ),
          value: 2,
        ),
        PopupMenuItem(
          child: Row(
            children: const [
              Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              Text('Exit')
            ],
          ),
          value: 3,
        ),
      ],
    );
  }
}
