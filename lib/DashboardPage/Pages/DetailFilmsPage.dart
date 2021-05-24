import 'package:cat/Model/Films.dart';
import 'package:cat/Model/People.dart';
import 'package:cat/Provider/FilmsPageProviders.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PeoplePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Container(
              child: Container(
                child: FutureBuilder<List<People>>(
                  future:
                      Provider.of<Profider>(context, listen: false)
                          .getPeople(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Scaffold(
                        body: Center(
                          child: Text("Loading..."),
                        ),
                      );
                    }
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                        itemBuilder: (context, _) {
                      return Card(
                        child: ListTile(
                            title: Text(snapshot.data[_].name)),
                      );
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
