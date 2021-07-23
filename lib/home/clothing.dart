import 'package:bat/components/sliderforclothes.dart';
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
          'https://th.bing.com/th/id/OIP.e4yWGWIbK8__idL4RAy81gHaHa?pid=ImgDet&rs=1',
      'itemname': 'namehere',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.qIc-wd0KfiFjHgmTMJWD1AHaHa?pid=ImgDet&rs=1',
      'itemname': 'namehere',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://5.imimg.com/data5/YS/XX/MY-8683446/men-sports-dress-500x500.jpg',
      'itemname': 'namehere',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.AH2lQJ_kVHD01IQnzpG1dAHaHa?pid=ImgDet&rs=1',
      'itemname': 'namehere',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.ajKKKYhYv3VjCxujn7iCigHaHa?pid=ImgDet&rs=1',
      'itemname': 'namehere',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.omtK7Z-693ED73hBb2gBwgHaHa?pid=ImgDet&rs=1',
      'itemname': 'namehere',
      'itemprice': '1,299.00'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Slider1(list);
  }
}
