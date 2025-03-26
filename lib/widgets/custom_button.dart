import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() ontap;
  final String title;
  final Color backgroundColor;
  const CustomButton(
      {super.key,
      required this.ontap,
      required this.title,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: backgroundColor),
        child: Center(
            child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
