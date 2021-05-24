import 'package:cat/Model/Images.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ImagesProvider extends ChangeNotifier {
  Future<List<Images>> getCatsImages() async {
    try {
      final response = await http.get(
          Uri.parse('https://api.thecatapi.com/v1/images/search'),
          headers: {'x-api-key': "958e3026-11e1-4a26-a1f8-9412b16a8922"});

      print(imagesFromJson(response.body));

      return imagesFromJson(response.body);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
