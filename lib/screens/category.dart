import 'package:flutter/material.dart';
import 'package:welcomeback/screens/Home.dart';
import 'package:welcomeback/screens/message.dart';
import 'package:welcomeback/screens/person.dart';
import 'package:welcomeback/utilis/categorys.dart';
import 'package:welcomeback/utilis/consultant.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int _selectedIndex = 1;

  final List<Widget> _pages = [
    Homepage(),
    Category(),
    Messagepage(),
    Person(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navigate to the corresponding page based on the selected index
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _pages[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Header Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Hi, Israel!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '28, Jul 2023',
                            style: TextStyle(
                              color: Colors.blue[200],
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue[600],
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  // Search TextField
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.blue[300],
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            // Main Content Section
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      // Category Section
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Category',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          SizedBox(height: 20),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  // Category Items
                                  Categorys(
                                      categorysname: 'Relationship',
                                      color: Colors.purple,
                                      color2: Colors.white,
                                  ),
                                  Categorys(
                                    categorysname: 'Career',
                                    color: Colors.blue,
                                    color2: Colors.white,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Categorys(
                                    categorysname: 'Education',
                                    color: Colors.orange,
                                    color2: Colors.white,
                                  ),
                                  Categorys(
                                    categorysname: 'Other',
                                    color: Colors.redAccent,
                                    color2: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      // Consultant Section
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Consultant',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: ListView(
                          // Listview of Consultants
                          children: [
                            Consultant(
                              icon: Icons.favorite,
                              consultantname: 'Bobby Singer',
                              consultantlevel: 'Education',
                              color: Colors.orange,
                            ),
                            Consultant(
                              icon: Icons.person,
                              consultantname: 'Bobby Singer',
                              consultantlevel: 'Education',
                              color: Colors.blue,
                            ),
                            Consultant(
                              icon: Icons.front_hand_sharp,
                              consultantname: 'Bobby Singer',
                              consultantlevel: 'Education',
                              color: Colors.red,
                            ),
                            Consultant(
                              icon: Icons.color_lens,
                              consultantname: 'Bobby Singer',
                              consultantlevel: 'Education',
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
