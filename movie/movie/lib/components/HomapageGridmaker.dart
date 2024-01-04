// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomepagegridMaker extends StatelessWidget {
  const HomepagegridMaker({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 5 / 8.5),
        itemBuilder: (context, index) => Container(
              color: Colors.white,
              margin: EdgeInsets.all(1),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 280,
                        width: 193,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/aquaman.jpg"))),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: Icon(Icons.download)),
                      ElevatedButton(
                          onPressed: () {}, child: Icon(Icons.download))
                    ],
                  )
                ],
              ),
            ));
  }
}
