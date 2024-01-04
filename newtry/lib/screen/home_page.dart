import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "ID CARD",
        ),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[
        ClipOval(
            child: Image.asset(
          "assets/image.jpeg",
          fit: BoxFit.cover,
        )),
        ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => AlertDialog(
                  actions: [
                    const Text("success"),
                    TextButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => const AlertDialog());
                      },
                      child: const Text("ok"),
                    ),
                    TextButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => const AlertDialog());
                      },
                      child: const Text("cancel"),
                    ),
                  ],
                  title: const Text('Alert Box'),
                  content: const Text('Are you sure?'),
                ),
              );
            },
            child: const Text("elevated Button"))
      ]),
    );
  }
}
