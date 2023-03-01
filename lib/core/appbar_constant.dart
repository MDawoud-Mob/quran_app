// import 'package:flutter/material.dart';

// class myAppBar extends StatelessWidget implements PreferredSizeWidget{
//   final String title;
//   const myAppBar({super.key, required this.title});

//   @override
//     Size get preferredSize => throw UnimplementedError();
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Text(title),
//       iconTheme: const IconThemeData(color: Colors.red),
//       elevation: 0,
//       backgroundColor: const Color.fromARGB(255, 241, 243, 240),
//       centerTitle: true,
//     );
//   }
// }
// Widget myAppBar( {required String title}) {
//     return AppBar(
//       title: Text("$title"),
//       iconTheme: const IconThemeData(color: Colors.red),
//       elevation: 0,
//       backgroundColor: const Color.fromARGB(255, 241, 243, 240),
//       centerTitle: true,
//     );
//   }