import 'package:flutter/material.dart';

import 'package:quran_app/quran/persentation/drawer/calender.dart';
import 'package:quran_app/quran/persentation/drawer/haj_umrah.dart';
import 'package:quran_app/quran/persentation/drawer/location.dart';
import 'package:quran_app/quran/persentation/drawer/setting.dart';
import 'package:quran_app/quran/persentation/drawer/tatbiq.dart';
import '../home_paage_screen/navigationbar.dart';
import 'package:share_plus/share_plus.dart';

class EndDrawer extends StatefulWidget {
  const EndDrawer({super.key});

  @override
  State<EndDrawer> createState() => _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const NavigationsBar() ,
      appBar: AppBar(
        
        iconTheme: const IconThemeData(color: Colors.red),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 241, 243, 240),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'مصر-المنوفية',
              style: TextStyle(color: Color.fromARGB(255, 143, 26, 17)),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.location_on_outlined,
                  color: Color.fromARGB(255, 165, 31, 21),
                ))
          ],
        ),
      ),
      endDrawer: Drawer(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(11),
          bottomLeft: Radius.circular(11),
        )),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 231, 230, 226),
                        borderRadius: BorderRadius.circular(3)),
                    child: IconButton(
                        padding: const EdgeInsets.only(left: 0),
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.red,
                        ))),
                const Text(
                  'فاذكروني',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset(
                  width: 55,
                  height: 55,
                  'assets/image/faskr.jpg',
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            ListTile(
                title: const Text(
                  "عن التطبيق",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textAlign: TextAlign.right,
                ),
                trailing: const Icon(Icons.home),
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Tatbiq()));
                  });
                }),
            const Divider(
              indent: 25,
              endIndent: 25,
              thickness: 1,
              color: Colors.grey,
            ),
            ListTile(
                title: const Text(
                  "التقويم",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textAlign: TextAlign.right,
                ),
                trailing: const Icon(Icons.calendar_today_outlined),
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Calender()));
                  });
                }),
            const Divider(
              indent: 25,
              endIndent: 25,
              thickness: 1,
              color: Colors.grey,
            ),
            ListTile(
                title: const Text(
                  "الحج والعمرة",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textAlign: TextAlign.right,
                ),
                trailing: const Icon(Icons.person_outline_outlined),
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HajjUmrah()));
                  });
                }),
            const Divider(
              indent: 25,
              endIndent: 25,
              thickness: 1,
              color: Colors.grey,
            ),
            ListTile(
                title: const Text(
                  "اماكن تهمك",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textAlign: TextAlign.right,
                ),
                trailing: const Icon(Icons.location_on_outlined),
                onTap: () {
                  setState(() {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const Location();
                        });
                  });
                }),
            const Divider(
              indent: 25,
              endIndent: 25,
              thickness: 1,
              color: Colors.grey,
            ),
            ListTile(
                title: const Text(
                  "الاعدادات",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textAlign: TextAlign.right,
                ),
                trailing: const Icon(Icons.settings),
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Setting()));
                  });
                }),
            const Divider(
              indent: 25,
              endIndent: 25,
              thickness: 1,
              color: Colors.grey,
            ),
            ListTile(
                title: const Text(
                  "تواصل معنا",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textAlign: TextAlign.right,
                ),
                trailing: const Icon(Icons.email_outlined),
                onTap: () {}),
            const Divider(
              indent: 25,
              endIndent: 25,
              thickness: 1,
              color: Colors.grey,
            ),
            ListTile(
                title: const Text(
                  "مشاركه البرنامج",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                  textAlign: TextAlign.right,
                ),
                trailing: const Icon(Icons.share_outlined),
                onTap: () {
                  setState(() {
                    Share.share('com.example.quran_app');
                  });
                }),
            Image.asset(
              'assets/image/bank.jpg',
              width: 110,
              height: 110,
            )
          ]),
        ),
      ),
      // body: const NavigationsBar(),
    );
  }
}
