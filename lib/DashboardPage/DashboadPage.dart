import 'package:flutter/material.dart';
import 'ImagesPage/ImagesPage.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ImagesPage(),
                ),
              );
            },
            child: Card(
              child: Center(child: Text("Images")),
            ),
          ),
          Card(
            child: Center(
              child: Text("Favorite"),
            ),
          ),
          Card(
            child: Center(
              child: Text("Breeds"),
            ),
          ),
          Card(
            child: Center(
              child: Text("Vote"),
            ),
          ),
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
            childAspectRatio: 4 / 2),
      ),
    );
  }
}
