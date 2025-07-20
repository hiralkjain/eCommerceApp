import 'package:ecom/screens/fav_screen.dart';
import 'package:ecom/screens/home_screen.dart';
import 'package:ecom/screens/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  List screens = [
    const HomeScreen(),
  const FavScreen(),
  const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("E-commerce App"),
          backgroundColor: Colors.red,
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Favorites",
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
