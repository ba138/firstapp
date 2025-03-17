import 'package:flutter/material.dart';

class ButtonDemoScreen extends StatelessWidget {
  const ButtonDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 80,
        width: 80,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.amberAccent),
        child: Center(
          child: Icon(
            Icons.add,
            size: 40,
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Buttons Demo Screen"),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  border: Border.all(width: 3, color: Colors.black)),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                  foregroundColor: Colors.white,
                  elevation: 0,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    Text("Elevated Button"),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              debugPrint("this is the text button");
            },
            child: Text("TextButton"),
          ),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.remove_red_eye_outlined)),
          OutlinedButton(
            onPressed: () {},
            child: Text("Outline Button"),
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                  strokeAlign: 12,
                ))),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 60,
              width: 150,
              child: Text("Gesture Decete"),
            ),
          ),
        ],
      ),
    );
  }
}
