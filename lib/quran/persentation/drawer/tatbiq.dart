import 'package:flutter/material.dart';

class Tatbiq extends StatefulWidget {
  const Tatbiq({super.key});

  @override
  State<Tatbiq> createState() => _TatbiqState();
}

class _TatbiqState extends State<Tatbiq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 233, 227, 227),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.red),
        centerTitle: true,
        title: const Text(
          'عن التطبيق',
          style: TextStyle(
              fontSize: 30,
              color: Colors.redAccent,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'فاذكروني',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Image.asset(width: 60, height: 60, 'assets/image/faskr.jpg'),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'فاذكروني احد مشاريع البلاد مبادرة \n     التابع لبنك البلاد وهي مسئوولية \n     البلاد اتجاه اهل البلاد يهدف الي \n     تنمية الاخلاق ورسالته الدين هو  \n                                        المعاملة  ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
