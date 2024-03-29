import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  @override
  final String title;
  final String desc;
  TaskCardWidget({this.title, this.desc});
  
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 32.0,
        ),
        margin: EdgeInsets.only(
          bottom: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0) 
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
        title ?? "(Unnamed Task)",
        style: TextStyle(
          color:Color(0xFF211551),
           fontSize: 22.0,
           fontWeight:FontWeight.bold,
           ),
           ),
           Padding(
             padding: EdgeInsets.only(
               top: 10.0,
             ),
             child: Text(
               desc ?? "No Description Added.",
               style: TextStyle(
                 fontSize:16.0,
                 color: Color(0xFF86829D),
                 height: 1.5,
                  ),
             ),
           ),
        ],
        ),
      
    );
  }
}