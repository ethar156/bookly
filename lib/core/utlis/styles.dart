import 'package:bookly_app/constants.dart';
import 'package:flutter/widgets.dart';

abstract class Style {
  
  static const TextStyle18 =  
   TextStyle(
   fontSize: 18 ,
   fontWeight: FontWeight.w600 );

  static const TextStyle20 = 
   TextStyle(
    fontSize: 20 ,
    fontWeight: FontWeight.normal,
    fontFamily: kGTSectraFine);

  static const TextStyle30 = 
    TextStyle(
    fontSize: 30 ,
    fontWeight: FontWeight.normal,
    fontFamily: kGTSectraFine );

  static const TextStyle14 = 
    TextStyle(
    fontSize: 14 ,
    fontWeight: FontWeight.normal );

  static const TextStyle16 = 
    TextStyle(
    fontSize: 16 ,
    fontWeight: FontWeight.w500 );      

}