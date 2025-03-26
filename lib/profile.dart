import 'package:firstapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
            ontap: () {
              debugPrint("This is profile Button");
            },
            title: "Profile Button",
            backgroundColor: Colors.amber)
      ],
    );
  }
}
