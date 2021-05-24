import 'package:cat/DashboardPage/Pages/DetailFilmsPage.dart';
import 'package:cat/DashboardPage/Pages/FilmsPage.dart';
import 'package:cat/DashboardPage/Pages/SpesiesPage.dart';
import 'package:cat/DashboardPage/Pages/VehaclePage.dart';
import 'package:flutter/material.dart';

import 'Pages/LocationsPage.dart';

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
          Card(
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FilmsPage(),
                  ),
                );
              },
              title: Center(
                child: Text("Films"),
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PeoplePage(),
                  ),
                );
              },
              title: Center(
                child: Text("People"),
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SpesiesPage(),
                  ),
                );
              },
              title: Center(
                child: Text("Spesies"),
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LocationsPage(),
                  ),
                );
              },
              title: Center(
                child: Text("Location"),
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => VehaclePage(),
                  ),
                );
              },
              title: Center(
                child: Text("Vehacle"),
              ),
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
