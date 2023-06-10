import 'package:flutter/material.dart';
import 'package:newest/screens/explore.dart';
import 'package:newest/screens/home.dart';
import 'package:newest/screens/post.dart';
import 'package:newest/screens/profile.dart';
import 'package:newest/screens/reels.dart';
import 'package:newest/trash/playground.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // default function for home is Homepage()
      home: const Homepage(),
      // home: Playground(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Explore(),
    Post(),
    Reels(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                "lib/assets/home.png",
              ),
              color: Colors.black,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                "lib/assets/search.png",
              ),
              color: Colors.black,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                "lib/assets/more.png",
              ),
              color: Colors.black,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                "lib/assets/video.png",
              ),
              color: Colors.black,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                "lib/assets/user.png",
              ),
              color: Colors.black,
            ),
            label: "",
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
