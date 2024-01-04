// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mytry/components/HOmepgaegridMaker.dart';
import 'package:mytry/components/LoginPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EAP Movies"),
        centerTitle: true,
        actions: [
          // Padding(
          //   padding: const EdgeInsets.only(left: 0.8),
          //   child: Icon(Icons.notifications),
          // ),
          Padding(
              padding: const EdgeInsets.all(8),
              child: IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return LoginPage();
                        });
                  },
                  icon: Icon(Icons.person)))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          iconSize: 25,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.local_movies_rounded), label: 'In Theatres'),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo_camera_front), label: 'Up Coming'),
            BottomNavigationBarItem(
                icon: Icon(Icons.theaters), label: 'Theatres'),
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting'),
            // BottomNavigationBarItem(
            // icon: IconButton(onPressed: (){}, icon: ), label: 'Setting'),
          ]),
      body: HomepagegridMaker(),
    );
  }
}
