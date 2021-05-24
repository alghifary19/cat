import 'package:cat/Model/Images.dart';
import 'package:cat/Provider/ImagesProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ImagesPage extends StatefulWidget {
  @override
  _ImagesPageState createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder<List<Images>>(
          future: Provider.of<ImagesProvider>(context, listen: false)
              .getCatsImages(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Scaffold(
                body: Center(child: Text("Loading...")),
              );
            }
            return Container(
              padding: const EdgeInsets.all(12),
              child: Card(
                child: Column(
                  children: [
                    Container(
                      height: 500,
                      alignment: Alignment.topCenter,
                      child: Card(
                        child: Image.network(
                          snapshot.data[0].url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      alignment: Alignment.bottomLeft,
                      child: Icon(Icons.thumb_up),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
