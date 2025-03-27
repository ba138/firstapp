import 'package:firstapp/splash_screen.dart';
import 'package:firstapp/widgets/custom_button.dart';
import 'package:firstapp/widgets/logout_buttons.dart';
import 'package:flutter/material.dart';

class DemoDialog extends StatefulWidget {
  const DemoDialog({super.key});

  @override
  State<DemoDialog> createState() => _DemoDialogState();
}

class _DemoDialogState extends State<DemoDialog> {
  customDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Are you sure want to Logout?",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LogoutButtons(
                      ontap: () {
                        Navigator.pop(context);
                      },
                      bgColor: Colors.green,
                      title: "Cancle",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    LogoutButtons(
                      ontap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (c) => SplashScreen()),
                            (route) => false);
                      },
                      bgColor: Colors.red,
                      title: "Logout",
                    )

                    // Expanded(
                    //   child: CustomButton(
                    //     ontap: () {},
                    //     title: "Cancel",
                    //     backgroundColor: Colors.red,
                    //   ),
                    // ),
                    // Expanded(
                    //   child: CustomButton(
                    //     ontap: () {},
                    //     title: "Logout",
                    //     backgroundColor: Colors.green,
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomButton(
                  ontap: () {
                    customDialog(context);
                  },
                  title: "Dialog",
                  backgroundColor: Colors.red),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                  ontap: () {},
                  title: "SnackBar",
                  backgroundColor: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
