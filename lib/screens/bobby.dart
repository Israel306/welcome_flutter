import 'package:flutter/material.dart';

class Bobby extends StatefulWidget {
  const Bobby({Key? key}) : super(key: key);

  @override
  State<Bobby> createState() => _BobbyState();
}

class _BobbyState extends State<Bobby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle drawer item tap here
              },
            ),
          ],
        ),
      ),
      );
    }
}
