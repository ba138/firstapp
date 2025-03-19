import 'package:flutter/material.dart';

class SingupScreen extends StatefulWidget {
  const SingupScreen({super.key});

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confromController = TextEditingController();
  bool ishide = true;
  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confromController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 20,
              children: [
                Image.asset(
                  "images/stripe.jpg",
                  height: 100,
                  width: 200,
                ),
                TextField(
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  controller: usernameController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      hintText: "Enter user name",
                      filled: true,
                      fillColor: Colors.grey.shade400,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                TextField(
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  controller: emailController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                      hintText: "Enter your Email",
                      filled: true,
                      fillColor: Colors.grey.shade400,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                TextField(
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  controller: passwordController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.white,
                      ),
                      hintText: "Enter your password",
                      filled: true,
                      fillColor: Colors.grey.shade400,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                TextField(
                  obscureText: ishide,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  controller: confromController,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              ishide = !ishide;
                            });
                            print("this is the password hide:$ishide");
                          },
                          child: Icon(ishide == true
                              ? Icons.remove_red_eye
                              : Icons.visibility_off_outlined)),
                      prefixIcon: GestureDetector(
                        child: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                      ),
                      hintText: "Confrom Password",
                      filled: true,
                      fillColor: Colors.grey.shade400,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                ElevatedButton(
                    onPressed: () {
                      print(" this is user name:${usernameController.text}");
                      print(" this is user email:${emailController.text}");
                      print(
                          " this is user password:${passwordController.text}");
                      print(
                          " this is user confrom password:${confromController.text}");
                    },
                    child: Text("Register"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
