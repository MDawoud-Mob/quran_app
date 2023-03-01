import 'package:flutter/material.dart';


class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return    AlertDialog(
      backgroundColor:const Color.fromARGB(255, 250, 248, 249),
    shape: RoundedRectangleBorder(
      
      borderRadius: BorderRadius.circular(20)
    ),    
            content: SizedBox(
              height: 250,
            
              child: Column(
                children:const [
               Card(
                elevation: 4.5,
                  child: ListTile(
                trailing: Icon(color: Colors.red,Icons.location_city_outlined), 
                title: Text(textAlign:TextAlign.end,'اقرب مسجد',style: TextStyle(fontWeight: FontWeight.w700, color: Colors.red),),   
                  ),
                ),
                SizedBox(height: 15,),
                     Card(
                elevation: 4.5,

                  child: ListTile(
                trailing: Icon(color: Colors.red,Icons.location_on_outlined), 
                title: Text(textAlign:TextAlign.end,'فروع البنك',style: TextStyle(fontWeight: FontWeight.w700, color: Colors.red),),   
                  ),
                  
                ),
                SizedBox(height: 15,),
                
                 Card(
                elevation: 4.5,

                  child: ListTile(
                trailing: Icon(color: Colors.red, Icons.location_on_outlined), 
                title: Text(textAlign:TextAlign.end,'(ATMs) الصراف الالي',style: TextStyle(fontWeight: FontWeight.w700, color: Colors.red),),   
                  ),
                ),    
                    ]  ),
            ),
          
          
        
      
    );
  }
}