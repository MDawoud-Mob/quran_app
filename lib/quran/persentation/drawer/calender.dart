import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 233, 227, 227),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.red),
        centerTitle:true,
        title: const Text('التقويم',style: TextStyle(fontSize: 30,color: Colors.redAccent, fontWeight: FontWeight.bold),)),
    body:Padding(
      padding: const EdgeInsets.only(left: 12,right: 12),
      child: Container(
        
        width: double.infinity,
        height: double.infinity,
        decoration:const BoxDecoration(
        color:Color.fromARGB(255, 241, 239, 239),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(11),
              topRight: Radius.circular(11),
            )
            ),
        
        child: TableCalendar(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2040, 3,20),
        focusedDay: DateTime.now(),
        availableGestures: AvailableGestures.all,
        headerStyle:const HeaderStyle( titleCentered: true,formatButtonVisible: false,titleTextStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red)),
      calendarStyle:const CalendarStyle(todayTextStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 224, 217, 195))),
        ),
      ),
    )
    ,);
  }
}