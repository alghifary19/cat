// import 'package:cat/Model/Images.dart';
// import 'package:cat/Provider/FavoriteProvider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class FavoritePage extends StatefulWidget {
//   @override
//   _FavoritePageState createState() => _FavoritePageState();
// }

// class _FavoritePageState extends State<FavoritePage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: FutureBuilder<List<Images>>(
//           future: Provider.of<FavoriteProvider>(context, listen: false)
//               .getCatsImages(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return Scaffold(
//                 body: Center(child: Text("Loading...")),
//               );
//             }
//             return Container(
//               padding: const EdgeInsets.all(12),
//               child: Card(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 500,
//                       alignment: Alignment.topCenter,
//                       child: Card(
//                         child: Image.network(
//                           snapshot.data[0].url,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(12),
//                       alignment: Alignment.bottomLeft,
//                       child: Icon(Icons.thumb_up),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
