import 'package:flutter/material.dart';

class AppWidgect{
static TextStyle boldTextFieldStyle (){
  return  TextStyle (
         color: Colors.black , 
         fontSize: 20,
         fontWeight: FontWeight.bold, 
         fontFamily: 'Poppins');
}
static TextStyle HeadlineTextFieldStyle (){
  return  TextStyle (
         color: Colors.black , 
         fontSize: 24,
         fontWeight: FontWeight.bold, 
         fontFamily: 'Poppins');
}
static TextStyle LightTextFieldStyle (){
  return  TextStyle (
         color: Colors.black38,  
         fontSize: 15,
         fontWeight: FontWeight.w500, 
         fontFamily: 'Poppins');
}
static TextStyle SemiboldtTextFieldStyle (){
  return  TextStyle (
         color: Colors.black,  
         fontSize: 18,
         fontWeight: FontWeight.w500, 
         fontFamily: 'Poppins');
}
}