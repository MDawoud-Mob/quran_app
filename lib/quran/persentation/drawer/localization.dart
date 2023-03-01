import 'package:flutter/material.dart';


class Localizaton extends StatefulWidget {
  const Localizaton({super.key});

  @override
  State<Localizaton> createState() => _LocalizatonState();
}

class _LocalizatonState extends State<Localizaton> {
  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
        title:  Container(
          decoration: BoxDecoration(
              color: Colors.red[500],
            borderRadius: BorderRadius.circular(7)
          ),
          
            width: double.infinity,
            height: 30,
            child:const Text(style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white), textAlign: TextAlign.center,'اعدادات اللغة')),
        
        content: SizedBox(
        
          height: 128,
          child: Column(
            children: [
            ElevatedButton(
            style: ButtonStyle(minimumSize: MaterialStateProperty.all(const Size(250, 45)), 
            backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 243, 243, 243))),
              onPressed: (){}, child: Text('العربية',style: TextStyle(fontSize: 20, color: Colors.red[600], fontWeight: FontWeight.bold),)),
        const  SizedBox(height: 20,),
              ElevatedButton(
            style: ButtonStyle(minimumSize: MaterialStateProperty.all(const Size(250, 45)), 
            backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 243, 243, 243))),
              onPressed: (){}, child: Text('English',style: TextStyle(fontSize: 20, color: Colors.red[600], fontWeight: FontWeight.bold),))
            ]),
          
      
        ));
  }
}
