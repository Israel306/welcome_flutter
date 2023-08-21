import 'package:flutter/material.dart';

class Categorys extends StatelessWidget {
  final String categorysname;
  final color;
  final color2;
  const Categorys({Key? key,
    required this.categorysname,
    required this.color,
    required this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      height: 80,
      width: 180,
      child: Center(
        child: Text(
          categorysname,
          style: TextStyle(
            color: color2,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
