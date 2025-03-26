import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String profile;
  final String name;
  final String email;
  final IconData userIcon;
  const UserCard(
      {super.key,
      required this.email,
      required this.name,
      required this.profile,
      required this.userIcon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(profile),
      ),
      title: Text(name),
      subtitle: Text(email),
      trailing: Icon(userIcon),
    );
  }
}
