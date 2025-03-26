import 'package:firstapp/constants.dart';
import 'package:firstapp/widgets/user_card.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserCard(
            email: "xyz@gmail.com",
            name: "User1",
            profile: dataList[0]['profile'],
            userIcon: Icons.arrow_back),
        UserCard(
            email: "abc@gmail.com",
            name: "User2",
            profile: dataList[1]['profile'],
            userIcon: Icons.arrow_forward_ios),
      ],
    );
    //  ListView.builder(
    //     itemCount: dataList.length,
    //     itemBuilder: (context, index) {
    //       var user = dataList[index];
    //       return UserCard(
    //         email: user['email'],
    //         name: user['username'],
    //         profile: user['profile'],
    //         userIcon: Icons.arrow_forward_ios,
    //       );
    //     });
  }
}
