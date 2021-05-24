import 'package:cat/Provider/FilmsPageProviders.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'DashboardPage/DashboadPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardPage(),
    ); */
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Profider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: DashboardPage(),
        ),
      ),
    );
  }
}
