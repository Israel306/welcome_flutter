import 'package:flutter/material.dart';
import 'package:welcomeback/screens/bobby.dart';

class Consultant extends StatelessWidget {
  final icon;
  final String consultantname;
  final String consultantlevel;
  final color;
  const Consultant({Key? key,
    required this.icon,
    required this.consultantname,
    required this.consultantlevel,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: GestureDetector(
        onTap: () {
          // Navigate to another page here
          // You can use Navigator.push to navigate to the desired page
          // For example:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Bobby()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children:[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        color: color,
                        child: Icon(
                          icon,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          consultantname,
                        ),
                        SizedBox(height: 10),
                        Text(
                          consultantlevel,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.more_horiz,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
