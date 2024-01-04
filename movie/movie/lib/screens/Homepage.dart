// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:movie/components/HomapageGridmaker.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  // late TabController tabController;
  List drawerNameList = ["Hollywood", "Bollywood", "Kollywood", "Tollywood"];

  List drawerIconList = [
    Icons.h_mobiledata,
    Icons.abc,
    Icons.laptop,
    Icons.help,
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Movie Plus"),
            actions: [
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Icon(Icons.settings),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(Icons.notification_add),
              )
            ],
            bottom: TabBar(
              // controller: tabController,
              tabs: [
                Tab(
                  child: Text("All"),
                ),
                Tab(
                  child: Text("New"),
                ),
                Tab(
                  child: Text("Popular"),
                ),
              ],
            ),
          ),
          drawer: Drawer(
            child: Column(children: [
              DrawerHeader(child: Icon(Icons.movie)),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: drawerNameList.length,
                  itemBuilder: ((context, index) => ListTile(
                        leading: Icon(drawerIconList[index]),
                        title: Text(drawerNameList[index]),
                      )))
            ]),
          ),
          body: HomepagegridMaker()),
    );
  }
}
