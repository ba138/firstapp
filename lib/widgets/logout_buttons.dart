import 'package:flutter/material.dart';

class LogoutButtons extends StatelessWidget {
  final Color bgColor;
  final String title;
  final Function() ontap;
  const LogoutButtons(
      {super.key,
      required this.bgColor,
      required this.title,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 40,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: bgColor,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
