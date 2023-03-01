import 'package:flutter/material.dart';
import 'package:quran_app/quran/persentation/drawer/localization.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 251, 237),
          iconTheme: IconThemeData(
            color: Colors.red[800],
          ),
          elevation: 0,
          centerTitle: true,
          title: Text(
            'الاعدادات',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red[800],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 12,
          ),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const Localizaton();
                        });
                  });
                },
                child: Card(
                  elevation: 4,
                  child: ListTile(
                    trailing: Icon(
                      Icons.language_rounded,
                      color: Colors.red[800],
                    ),
                    title: Text(
                        textAlign: TextAlign.right,
                        'اعدادات اللغة',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red[800],
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                  onTap: () {},
                  child: Card(
                    elevation: 4,
                    child: ListTile(
                      trailing: Image.asset(
                        width: 40,
                        height: 40,
                        'assets/image/salwat.jpg',
                        fit: BoxFit.fill,
                      ),
                      title: const Text(
                          textAlign: TextAlign.right,
                          'اعدادات الصلاة',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 143, 26, 17))),
                    ),
                  )),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                  onTap: () {},
                  child: Card(
                    elevation: 4,
                    child: ListTile(
                      trailing: Image.asset(
                        width: 40,
                        height: 40,
                        'assets/image/azkar.jpg',
                        fit: BoxFit.fill,
                      ),
                      title: Text(
                          textAlign: TextAlign.right,
                          'اعدادات الاذكار',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red[800],
                          )),
                    ),
                  )),
              const SizedBox(
                height: 12,
              ),
              Card(
                elevation: 4,
                child: ListTile(
                  trailing: Image.asset(
                    width: 40,
                    height: 40,
                    'assets/image/quran.jpg',
                    fit: BoxFit.fill,
                  ),
                  title: Text(
                      textAlign: TextAlign.right,
                      'اعدادات القران',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red[800],
                      )),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                  onTap: () {},
                  child: Card(
                    elevation: 4,
                    child: ListTile(
                      trailing: Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.red[800],
                      ),
                      title: Text(
                          textAlign: TextAlign.right,
                          'تصحيح التاريخ الهجري ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red[800],
                          )),
                    ),
                  )),
              const SizedBox(
                height: 12,
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  trailing: Icon(
                    Icons.refresh_sharp,
                    color: Colors.red[800],
                  ),
                  title: Text(
                      textAlign: TextAlign.right,
                      ' التاكد من التحديثات',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red[800])),
                ),
              ),
            ],
          ),
        ));
  }
}
