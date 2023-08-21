import 'package:flutter/material.dart';

class Emotions extends StatelessWidget {
  final String emotions;
  const Emotions({Key? key,
    required this.emotions
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue[600],
      ),
      padding: EdgeInsets.all(15),
      child: Center(
        child: Text(
          emotions,
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
