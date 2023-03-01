import 'package:flutter/material.dart';

class HajjUmrah extends StatefulWidget {
  const HajjUmrah({super.key});

  @override
  State<HajjUmrah> createState() => _HajjUmrahState();
}

class _HajjUmrahState extends State<HajjUmrah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 233, 227, 227),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.red),
        centerTitle: true,
        title: const Text(
          'الحج والعمرة',
          style: TextStyle(
              fontSize: 30,
              color: Colors.redAccent,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 130,
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  elevation: 0,
                  color: const Color.fromARGB(255, 240, 231, 231),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/image/person.jpg',
                      fit: BoxFit.fill,
                      width: 120,
                      height: 120,
                    ),
                    title: const Center(
                        child: Text(
                      'ملابس \n الحج \n والعمرة',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 130,
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  color: const Color.fromARGB(255, 240, 231, 231),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/image/hand.jpg',
                      fit: BoxFit.cover,
                      width: 120,
                      height: 120,
                    ),
                    title: const Center(
                        child: Text(
                      'ادعية \n الحج \n والعمرة',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 130,
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  color: const Color.fromARGB(255, 240, 231, 231),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/image/kaba.jpg',
                      fit: BoxFit.cover,
                      width: 120,
                      height: 120,
                    ),
                    title: const Center(
                        child: Text(
                      'مناسك \n الحج \n والعمرة',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
