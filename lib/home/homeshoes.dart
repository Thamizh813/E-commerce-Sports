import 'package:bat/components/homeslider.dart';
import 'package:bat/components/sliderforshoes.dart';
import 'package:flutter/material.dart';

class Shoemains extends StatefulWidget {
  Shoemains({Key? key}) : super(key: key);

  @override
  _ShoemainsState createState() => _ShoemainsState();
}

class _ShoemainsState extends State<Shoemains> {
  List<Map<String, Object>> list = [
    {
      'image':
          'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_1.0/h_545,c_limit/e344cd6d-e020-4410-85bb-d56e2ef1282c/venture-runner-shoes-FVPSB9.png',
      'itemname': 'Golf Shoes',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_1.0/h_545,c_limit/9ce3296a-ea97-4482-b16a-2c22195eb11d/court-vision-low-shoes-F6vqsg.png',
      'itemname': 'Nike Path Winter',
      'itemprice': '1,099.00'
    },
    {
      'image':
          'https://n2.sdlcdn.com/imgs/h/u/j/Nike-Multi-Color-Basketball-Shoes-SDL838731391-4-345ca.jpg',
      'itemname': 'Basketball Shoes',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_1.0/h_545,c_limit/c81e539d-03fb-451c-9edc-871c766f60e3/court-royale-2-shoes-W4s7w7.png',
      'itemname': 'Fashion Nike',
      'itemprice': '1,799.00'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Homeslider(list);
  }
}
