import 'package:flutter/material.dart';


class QuranKarim extends StatefulWidget {
  const QuranKarim({super.key});

  @override
  State<QuranKarim> createState() => _QuranKarimState();
}

class _QuranKarimState extends State<QuranKarim> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:const [
        Text('القران الكريم')])));
  }
}