import 'package:flutter/material.dart';
import 'package:welcomeback/screens/Home.dart';
import 'package:welcomeback/screens/category.dart';

class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Drawer Example'),
        // Display the end drawer when this icon is pressed
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Column(
            children: [
                  Text('Welcome Israel!'),
            ],
          ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
                  accountName: Text('Israel Ogundele'), 
                  accountEmail: Text('israelogundele306@gmail.com'),
              ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                // Handle drawer item tap here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
            ),
            Divider(
              color: Colors.black,
              thickness: 10,
            ),
            ListTile(
              title: Text('Catrgory'),
              leading: Icon(Icons.apps),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Category()),
                );
              },
            ),
            Divider(
              color: Colors.black,
              thickness: 10,
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
