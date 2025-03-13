import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DecorationScreen extends StatelessWidget {
  const DecorationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'This is Google Fonts',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.blue,
                    letterSpacing: .5,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'This is Google Fonts',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Colors.blue,
                  letterSpacing: .5,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.black,
                width: 5,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text("hui",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.blue,
                            letterSpacing: .5,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("hi"),
                    Text("data"),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
