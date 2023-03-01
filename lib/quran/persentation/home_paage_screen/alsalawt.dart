import 'package:flutter/material.dart';


class Salawt extends StatefulWidget {
  const Salawt({super.key});

  @override
  State<Salawt> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Salawt> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:const [
        Text('الصلوات')
      ],
    ),
  ),  );
  }
}