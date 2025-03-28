// import 'package:firstapp/button_demo_screen.dart';
// import 'package:firstapp/scrolling_demo_screen.dart';
// import 'package:firstapp/singup_screen.dart';
// import 'package:firstapp/textfield_demo_screen.dart';

import 'package:firstapp/custom_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DemoDialog(),
    );
  }
}
