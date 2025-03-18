import 'package:flutter/material.dart';

class ScrollingDemoScreen extends StatelessWidget {
  const ScrollingDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scrolling demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("images/stripe.jpg"))),
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("images/kaju.jpeg"))),
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
