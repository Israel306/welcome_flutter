import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  final icon;
  final String exercisename;
  final int exercisenumber;
  final color;
  const Exercise({Key? key,
    required this.icon,
    required this.exercisename,
    required this.exercisenumber,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
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
                          exercisename,
                      ),
                      SizedBox(height: 10),
                      Text(
                        exercisenumber.toString() + ' Exercises',
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
    );
  }
}
