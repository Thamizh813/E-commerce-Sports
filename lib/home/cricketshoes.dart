import 'package:bat/clothes.dart';
import 'package:bat/yadava.dart';
import 'package:flutter/material.dart';

class Cricketmainshoe extends StatefulWidget {
  Cricketmainshoe({Key? key}) : super(key: key);

  @override
  _CricketmainshoeState createState() => _CricketmainshoeState();
}

class _CricketmainshoeState extends State<Cricketmainshoe> {
  List<Map<String, Object>> list = [
    {
      'image':
          'https://images-na.ssl-images-amazon.com/images/I/81XJJQWR%2BiL._SL1500_.jpg',
      'itemname': 'ss sports shoe',
      'itemprice': '3,699.00'
    },
      {
      'image':
          'https://th.bing.com/th/id/OIP.omtK7Z-693ED73hBb2gBwgHaHa?pid=ImgDet&rs=1',
      'itemname': 'Cricket shoe',
      'itemprice': '2,999.00'
    },
      {
      'image':
          'https://cricketyorkshire.com/wp-content/uploads/2021/04/Payntr-cricket-shoes-Bodyline-263-for-all-rounders.jpg',
      'itemname': 'yorshire cricket shoe',
      'itemprice': '899.00'
    },
      {
      'image':
          'https://th.bing.com/th/id/OIP.hRK1kLW3unJ8QaaJ9DvrVAHaEc?pid=ImgDet&rs=1',
      'itemname': 'segashoes',
      'itemprice': '1,699.00'
    },
      {
      'image':
          'https://rukminim1.flixcart.com/image/714/857/jpu324w0/shoe/q/7/v/radiant-cricket-6-zigaro-white-original-imafbzyj6tmzphzd.jpeg?q=50',
      'itemname': 'cricket shoe',
      'itemprice': '3,999.00'
    },
      {
      'image':
          'https://5.imimg.com/data5/SELLER/Default/2020/10/MX/YQ/CY/21883350/dsc-beamer-cricket-shoes-grey-white-500x500.jpg',
      'itemname': 'dsc shoe',
      'itemprice': '3,499.00'
    },
      {
      'image':
          'https://d34xpxcpbnz20f.cloudfront.net/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/n/i/nike_youth_bombax_turf_shoes_footwear_red.jpeg',
      'itemname': 'sg shoe',
      'itemprice': '999.00'
    },
    
      {
      'image':
          'https://th.bing.com/th/id/OIP.omtK7Z-693ED73hBb2gBwgHaHa?pid=ImgDet&rs=1',
      'itemname': 'hockey shoe',
      'itemprice': '2,999.00'
    },
      {
      'image':
          'https://cdn.mydukaan.io/v2/image/892x892/3939853/1b9c1c74-b7e8-4615-999c-5db041f877ca/1617956966110-c992c445-4a42-447e-aa21-d7fef33ae89f.jpeg',
      'itemname': 'addidas shoe',
      'itemprice': '1,899.00'
    },
      {
      'image':
          'https://th.bing.com/th/id/OIP.mC7Z-6Hd9im_t77W2CPGIgHaHa?pid=ImgDet&rs=1',
      'itemname': 'cricket shoe',
      'itemprice': '1,299.00'
    },
   
  ];
  @override
  Widget build(BuildContext context) {
    return Cricketmaterial(list);
  }
}
