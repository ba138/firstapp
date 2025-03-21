import 'package:flutter/material.dart';

class StackDemoScreen extends StatefulWidget {
  const StackDemoScreen({super.key});

  @override
  State<StackDemoScreen> createState() => _StackDemoScreenState();
}

class _StackDemoScreenState extends State<StackDemoScreen> {
  bool isOn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Stack Demo Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.red,
                ),
                Positioned(
                    bottom: 0,
                    right: 30,
                    child: InkWell(
                      onTap: () {
                        debugPrint("this is image p[ath]");
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.amber),
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Icon(
            Icons.light,
            size: 40,
            color: isOn ? Colors.amber : Colors.black,
          ),
          // Switch(
          //     value: isOn,
          //     onChanged: (value) {
          //       setState(() {
          //         isOn = value;
          //       });
          //       print("this is the value$isOn");
          //     }),
          // Radio(
          //     value: isOn,
          //     groupValue: null,
          //     onChanged: (value) {
          //       setState(() {
          //         isOn = !isOn;
          //       });
          //       print("this is the value$isOn");
          //     })
          InkWell(
            onTap: () {
              setState(() {
                isOn = !isOn;
              });
            },
            child: Container(
              height: 40,
              width: 40,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, border: Border.all()),
              child: Center(
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: isOn ? Colors.red : Colors.black,
                      shape: BoxShape.circle),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
