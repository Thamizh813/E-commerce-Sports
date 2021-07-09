import 'package:bat/slider.dart';
import 'package:flutter/material.dart';

class Clothing extends StatefulWidget {
  Clothing({Key? key}) : super(key: key);

  @override
  _ClothingState createState() => _ClothingState();
}

class _ClothingState extends State<Clothing> {
  List<Map<String, Object>> list = [
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBVrEWnhsaOWgOXD8gHulwMpWGATdW-pFvAA&usqp=CAU',
      'itemname': 'namehere',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBVrEWnhsaOWgOXD8gHulwMpWGATdW-pFvAA&usqp=CAU',
      'itemname': 'namehere',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBVrEWnhsaOWgOXD8gHulwMpWGATdW-pFvAA&usqp=CAU',
      'itemname': 'namehere',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBVrEWnhsaOWgOXD8gHulwMpWGATdW-pFvAA&usqp=CAU',
      'itemname': 'namehere',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBVrEWnhsaOWgOXD8gHulwMpWGATdW-pFvAA&usqp=CAU',
      'itemname': 'namehere',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBVrEWnhsaOWgOXD8gHulwMpWGATdW-pFvAA&usqp=CAU',
      'itemname': 'namehere',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBVrEWnhsaOWgOXD8gHulwMpWGATdW-pFvAA&usqp=CAU',
      'itemname': 'namehere',
      'itemprice': '1,299.00'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Slider1(list);
  }
}
