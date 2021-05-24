
import 'package:cat/Model/Films.dart';
import 'package:cat/Model/Location.dart';
import 'package:cat/Model/People.dart';
import 'package:cat/Model/Spesies.dart';
import 'package:cat/Model/Vehacles.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Profider extends ChangeNotifier{

  Future<List<Films>> getFilms() async {
    try{

      final response = await http.get(Uri.parse('https://ghibliapi.herokuapp.com/films'));

      return filmsFromJson(response.body);
    } catch(e){
      print(e);
      return null;
    }
  }

  Future<List<People>> getPeople() async {
    try{

      final response = await http.get(Uri.parse('https://ghibliapi.herokuapp.com/people'));

      return peopleFromJson(response.body);
    } catch(e){
      print(e);
      return null;
    }
  }

  Future<List<Location>> getLocation() async {
    try{

      final response = await http.get(Uri.parse('https://ghibliapi.herokuapp.com/locations'));

      return locationFromJson(response.body);
    } catch(e){
      print(e);
      return null;
    }
  }

  Future<List<Spesies>> getSpesies() async {
    try{

      final response = await http.get(Uri.parse('https://ghibliapi.herokuapp.com/species'));

      return spesiesFromJson(response.body);
    } catch(e){
      print(e);
      return null;
    }
  }

  Future<List<Vehicles>> getVehiacle() async {
    try{

      final response = await http.get(Uri.parse('https://ghibliapi.herokuapp.com/vehicles'));

      return vehiclesFromJson(response.body);
    } catch(e){
      print(e);
      return null;
    }
  }
}