import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Icon Screen"),
        centerTitle: true,
        elevation: 0,
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.person), Icon(Icons.notification_add)],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Hello",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Icon(
              Icons.safety_check,
              size: 100,
              color: Colors.red,
            ),
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUypk_8tAaK8q7b1t6m-Wu9AUluhssIe1pIw&s",
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            // Container(
            //   height: 200,
            //   width: 200,
            //   decoration: BoxDecoration(
            //       shape: BoxShape.circle,
            //       image: DecorationImage(
            //           image: NetworkImage(
            //               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUypk_8tAaK8q7b1t6m-Wu9AUluhssIe1pIw&s"))),
            // )
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 40,
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUypk_8tAaK8q7b1t6m-Wu9AUluhssIe1pIw&s"),
            )
          ],
        ),
      ),
    );
  }
}
