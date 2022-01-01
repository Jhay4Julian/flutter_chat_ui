import 'package:chat_app/models/mssg_model.dart';
import 'package:chat_app/widgets/category_selection.dart';
import 'package:chat_app/widgets/favorite_contacts.dart';
import 'package:chat_app/widgets/recent_chats.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      drawer: Container(
        width: 250,
        child: Drawer(
          child: Container(
            color: Color(0xFFFFEFEE),
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
                Column(
                  children: [
                  ListTile(
                    title: const Text(
                      "Profile",
                      style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                    ),
                    leading: const Icon(Icons.person),
                    onTap: (){},
                  ),
                  ListTile(
                    title: const Text(
                      "Messages",
                      style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                    ),
                    leading: const Icon(Icons.message),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()),);},
                  ),
                  ListTile(
                    title: const Text(
                      "Settings",
                      style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                    ),
                    leading: const Icon(Icons.settings),
                    onTap: (){},
                  ),
                  ListTile(
                    title: const Text(
                      "Logout",
                      style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                    ),
                    leading: const Icon(Icons.exit_to_app),
                    onTap: (){},
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Center(
          child: Text(
            'Ch@t Now',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          const CategorySelection(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                children: const [
                  FavoriteContacts(),
                  RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
