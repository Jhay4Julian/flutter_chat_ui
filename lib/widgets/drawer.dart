import 'package:chat_app/models/mssg_model.dart';
import 'package:chat_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFEFEE),
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text(
              "Klaus Stefan",
              style: TextStyle(fontSize: 15.0),
            ),
            accountEmail: const Text(
              "klaus@gmail.com",
              style: TextStyle(fontSize: 15.0),
            ),
            currentAccountPicture: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(currentUser.imageUrl),
            ),
          ),
          Column(children: [
            ListTile(
              title: const Text(
                "Profile",
                style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),
              ),
              leading: const Icon(Icons.person),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                "Messages",
                style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),
              ),
              leading: const Icon(Icons.message),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
            ListTile(
              title: const Text(
                "Settings",
                style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),
              ),
              leading: const Icon(Icons.settings),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                "Logout",
                style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),
              ),
              leading: const Icon(Icons.exit_to_app),
              onTap: () {},
            ),
          ]),
        ],
      ),
    );
  }
}
