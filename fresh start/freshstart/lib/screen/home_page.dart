import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
  with SingleTickerProviderStateMixin
 {
  int selectedPage = 0;
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 3, vsync: this
      );
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),

        ),
         bottom: TabBar(
          tabs: [
          Tab(
            icon: Icon(Icons.directions_car),
          ),
          Tab(
            icon: Icon(Icons.directions_car),
          ),
          Tab(
            icon: Icon(Icons.directions_car),
          ),

        ],),
        
      ),
      
      body: Container(

        child:TabBarView(
          children: [
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ],
        ),
        
        // margin: const EdgeInsets.all(20),
        // padding: const EdgeInsets.all(20),
        // decoration: BoxDecoration(
        //     color: Color.fromARGB(95, 240, 222, 222),
        //     borderRadius: BorderRadius.circular(22),
        //     boxShadow: [
        //       BoxShadow(
        //         color: Colors.black.withOpacity(0.2),
        //         blurRadius: 3,
        //         spreadRadius: 6,
        //       )
        //     ]),
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Center(
        //       child: SizedBox(
        //         height: 100,
        //         width: 100,
        //         child: ClipOval(
        //           child: Image.asset(
        //             "assets/image.jpeg",
        //             fit: BoxFit.cover,
        //           ),
        //         ),
        //       ),
        //     )
        //   ],
        // ),
       
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: "Report",
          ),
        ],
      ),
    );
  }
}
