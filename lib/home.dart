import 'package:assignment05/about.dart';
import 'package:assignment05/login.dart';
import 'package:assignment05/todoList.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<Home> {
  int _selectedTab = 0;
  final _pageOptions = [
    TodoList(),
    About(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedTab = index;
    });
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white24,
        title: Text(
          'ToDo App',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
        ),
        actions: [
          Icon(Icons.notifications),
          Padding(padding: const EdgeInsets.only(right: 10))
        ],
      ),
      drawer: Drawer(
          child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Profile'),
            decoration: BoxDecoration(
              color: Colors.black12,
            ),
          ),
          ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/myImage.jpg'),
                child: GestureDetector(onTap: () {}),
              ),
              title: Text('User'),
              subtitle: Text("369haris@gmail.com"),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.person,
                    size: 20.0,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => About()));
                  },
                ),
              ])),
          ListTile(
            title: Text('Logout'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
          ),
        ],
      )),
      body: _pageOptions[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text('Todo List'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('About'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back_rounded),
            title: Text('Back'),
          ),
        ],
      ),
    );
  }
}
