import 'package:flutter/material.dart';
import 'package:welcomeback/screens/category.dart';
import 'package:welcomeback/screens/message.dart';
import 'package:welcomeback/screens/person.dart';
import 'package:welcomeback/utilis/emotions.dart';
import 'package:welcomeback/utilis/exercise.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

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
        type: BottomNavigationBarType.fixed, // Fixed type to show all items
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
        child:
        Column(
          children: [
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
                  SizedBox(height: 25),
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
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Emotions(
                            emotions: '😞',
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Badly',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Emotions(
                            emotions: '😊',
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Fine',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Emotions(
                            emotions: '😀',
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Well',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Emotions(
                            emotions: '😃',
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Excellent',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Exercises',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Icon(Icons.more_horiz)
                            ],
                          ),
                          SizedBox(height: 20),
                          // Listview of Exercise
                          Expanded(
                            child: ListView(
                              children: [
                                Exercise(
                                    icon: Icons.favorite,
                                  exercisename: 'Speaking Skills',
                                  exercisenumber: 16,
                                  color: Colors.orange,
                                ),
                                Exercise(
                                  icon: Icons.person,
                                  exercisename: 'Reading Speed',
                                  exercisenumber: 8,
                                  color: Colors.blue,
                                ),
                                Exercise(
                                  icon: Icons.front_hand_sharp,
                                  exercisename: 'writing Skills',
                                  exercisenumber: 10,
                                  color: Colors.red,
                                ),
                                Exercise(
                                  icon: Icons.color_lens,
                                  exercisename: 'Drawing Skills',
                                  exercisenumber: 18,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
