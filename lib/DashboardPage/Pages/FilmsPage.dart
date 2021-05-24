import 'package:cat/DashboardPage/Pages/DetailFilmsPage.dart';
import 'package:cat/Model/Films.dart';
import 'package:cat/Provider/FilmsPageProviders.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilmsPage extends StatefulWidget {
  @override
  _FilmsState createState() => _FilmsState();
}

class _FilmsState extends State<FilmsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder<List<Films>>(
            future:
                Provider.of<Profider>(context, listen: false).getFilms(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Scaffold(
                  body: Center(child: Text("Loading..."),),
                );
              }
              return Container(
                child: ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, _) => Card(
                      child: ListTile(
                        title: Container(
                              child: Container(
                                child: Text(snapshot.data[_].title),
                              ),
                            ),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: Text(snapshot.data[_].director),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: Text(snapshot.data[_].producer),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: Text("Tahun " + snapshot.data[_].releaseDate),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: Text( snapshot.data[_].runningTime + ' Menit'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: Text("Score : "+snapshot.data[_].rtScore),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8, left: 2, right: 2, bottom: 8),
                                child: Text(snapshot.data[_].description),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
              );
            }),
      ),
    );
  }
}
