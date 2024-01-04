// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool Checkboxtask = false;
  List todolist = [
    ["Wake up", false],
    ["Breakfast", true],
    ["Get ready", false],
    ["College", true],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Text(
                      "Daily Task",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        letterSpacing: 3,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "To do task",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: todolist.length,
                itemBuilder: ((context, index) {
                  return SizedBox(
                    height: 80,
                    width: 400,
                    child: Container(
                      margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(137, 214, 203, 203),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                          value: Checkboxtask,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              Checkboxtask = value!;
                                            });
                                          }),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      RichText(
                                          text: TextSpan(
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                              text: todolist[index][0],
                                              children: [
                                            TextSpan(
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w100),
                                                text: "\n Today")
                                          ])),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.delete)),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                })),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Color.fromARGB(179, 8, 8, 8),
                            title: Icon(Icons.add),
                            content: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Add a New Task",
                              ),
                            ),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {}, child: Text("Save")),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Quit")),
                            ],
                          );
                        });
                  },
                  child: Icon(Icons.add),
                ),
              ],
            )
          ],
        ));
  }
}
