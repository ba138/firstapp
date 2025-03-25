import 'package:firstapp/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Expanded(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: dataList.length,
            itemBuilder: (context, index) {
              final users = dataList[index];
              return Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(users['profile']),
                      fit: BoxFit.contain),
                ),
              );
            }),
      ),
    );
  }
}
