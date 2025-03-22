import 'package:flutter/material.dart';

class DrawerDemoScreen extends StatefulWidget {
  final String userName;
  const DrawerDemoScreen({super.key, required this.userName});

  @override
  State<DrawerDemoScreen> createState() => _DrawerDemoScreenState();
}

class _DrawerDemoScreenState extends State<DrawerDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Demo Screen"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                  ),
                  Text(widget.userName),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.red,
              ),
              title: Text("Profile"),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.red,
              ),
              title: Text("Profile"),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.red,
              ),
              title: Text("Profile"),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(
                Icons.new_label,
                color: Colors.red,
              ),
              title: Text("Terms"),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.logout,
                color: Colors.red,
              ),
              title: Text("Logout"),
              trailing: Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 50,
            ),
          ),
          Center(
            child: Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Text("open Drawer"),
              );
            }),
          ),
        ],
      ),
    );
  }
}
