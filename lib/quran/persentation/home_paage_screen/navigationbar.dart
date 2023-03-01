import 'package:flutter/material.dart';
import 'package:quran_app/quran/persentation/home_paage_screen/alsalawt.dart';
import 'package:quran_app/quran/persentation/home_paage_screen/askar.dart';
import 'package:quran_app/quran/persentation/home_paage_screen/qubla.dart';
import 'package:quran_app/quran/persentation/home_paage_screen/quran_karim.dart';
class NavigationsBar extends StatefulWidget {
  const NavigationsBar({super.key});

  @override
  State<NavigationsBar> createState() => _NavigatiosnBarState();
}

List items = const[Salawt(), QuranKarim(), Askar(), Qubla()];

class _NavigatiosnBarState extends State<NavigationsBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      
      body:items.elementAt(_currentIndex) ,
      bottomNavigationBar: BottomNavigationBar(
        items: const[
          BottomNavigationBarItem(
            
              icon: Icon(
              Icons.home
              ),


            label: 'الصلوت',),
          BottomNavigationBarItem(
              icon: Icon(
              Icons.local_activity
              
              ),
            label: 'القران الكريم',),
          BottomNavigationBarItem(
              icon: Icon(
              Icons.mosque_rounded
              
              ),
            label: 'الاذكار'),
          BottomNavigationBarItem(
              icon: ImageIcon(
              AssetImage('assets/image/azkar.jpg',)
            
              ),
            label: 'القبلة', ),
        ],
        selectedItemColor:Colors.red,
            type: BottomNavigationBarType.fixed,
             selectedLabelStyle:const TextStyle(fontSize: 17, fontStyle:FontStyle.italic , fontWeight: FontWeight.bold),
        onTap: _changeItem,
        backgroundColor:const Color.fromARGB(255, 208, 205, 214),
        currentIndex: _currentIndex,
    unselectedItemColor:const Color.fromARGB(255, 131, 129, 129)),
      
    );
  }

  void _changeItem(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
