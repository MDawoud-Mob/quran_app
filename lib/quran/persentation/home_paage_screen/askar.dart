import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quran_app/models/section_model.dart';

class Askar extends StatefulWidget {
  const Askar({super.key});

  @override
  State<Askar> createState() => _AskarState();
}

class _AskarState extends State<Askar> with TickerProviderStateMixin {
  List<SectionModel> sections = [];

  @override
  void initState() {
    super.initState();
    loadSections();
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);

    return Scaffold(
        body: Padding(
      padding:const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        children: [
        const  SizedBox(
            height: 0,
          ),
          Text(
            "الاذكار",
            style: TextStyle(
                fontSize: 20,
                color: Colors.red[800],
                fontWeight: FontWeight.bold),
          ),
        const  SizedBox(
            height: 10,
          ),
          Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.red[800],
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding:const EdgeInsets.all(6),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(12)),
                  controller: tabController,
                  tabs:const [
                    Text(
                      'التسبيح',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'الاذكار',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
      const    SizedBox(
            height: 12,
          ),
        const  TextField(
            textAlign: TextAlign.right,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: "بحث",
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1, color: Color.fromARGB(255, 189, 76, 76))),
                prefixIcon: Icon(
                    color: Color.fromARGB(255, 128, 40, 40),
                    Icons.search_sharp)),
          ),
        const  SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: sections.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 150,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12, left: 12),
                        child: ListTile(
                          leading: Text(" ${sections[index].count.toString()} "),
                          trailing: Text(" ${sections[index].name.toString()} "),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    ));
  }

  void loadSections()  {
    DefaultAssetBundle.of(context)
        .loadString('assets/database/section_db.json')
        .then((data) {
      var response = json.decode(data);
      print(response);
      response.forEach((section) {
        SectionModel sectionn = SectionModel.fromJson(section);
        sections.add(sectionn);
      });
      setState(() {});
    }).catchError((error) {
      print("+++++++++++++ $error");
    });
  }
}
