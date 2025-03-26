import 'package:firstapp/constants.dart';
import 'package:firstapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomButton(
              title: "Button One",
              backgroundColor: Colors.black,
              ontap: () {
                debugPrint("button one pressed");
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              title: "Button Two",
              backgroundColor: Colors.green,
              ontap: () {
                debugPrint("button two pressed");
              },
            ),
          ],
        )
        // Expanded(
        //   child: ListView.builder(
        //       itemCount: dataList.length,
        //       itemBuilder: (context, index) {
        //         final users = dataList[index];
        //         return Container(
        //           height: 100,
        //           width: 100,
        //           decoration: BoxDecoration(
        //             shape: BoxShape.circle,
        //             image: DecorationImage(
        //                 image: NetworkImage(users['profile']),
        //                 fit: BoxFit.contain),
        //           ),
        //         );
        //       }),
        // ),
        );
  }
}
