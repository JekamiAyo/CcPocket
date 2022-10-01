import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key, required this.IconData, required this.color}) : super(key: key);

  final Color color;
  final IconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 70,
      decoration: BoxDecoration(
          color: Color(0xFF222225), borderRadius: BorderRadius.circular(20)),
      child: Icon(
        IconData,
        color: color,
        size: 28,
      ),
    );
  }
}
