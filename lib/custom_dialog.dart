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

  customSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.grey.shade400,
      content: Text(
        "This item has been removed",
        style: TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
      ),
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: "undo",
        onPressed: () {},
        backgroundColor: Colors.green,
      ),
    ));
  }

  int count = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                  ontap: () {
                    // customDialog(context);
                    String stringCount = count.toString();
                    debugPrint("this is the string count $stringCount");
                    int intCount = int.parse(stringCount);
                    double doubleCount = double.parse(stringCount);
                    debugPrint("this is the double count $doubleCount");
                  },
                  title: "Dialog",
                  backgroundColor: Colors.red),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                  ontap: () {
                    customSnackBar(context);
                  },
                  title: "SnackBar",
                  backgroundColor: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
