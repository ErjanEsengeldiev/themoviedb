import 'package:flutter/material.dart';

class PoupButtonForMenu extends StatelessWidget {
  const PoupButtonForMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(Icons.settings),
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
              Text('Setting')
            ],
          ),
          value: 1,
        ),
        PopupMenuItem(
          child: Row(
            children: const [
              Icon(
                Icons.share,
                color: Colors.white,
              ),
              Text('Share')
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
