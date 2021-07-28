import 'package:bat/components/sliderforshoes.dart';
import 'package:flutter/material.dart';

class Shoemain extends StatefulWidget {
  Shoemain({Key? key}) : super(key: key);

  @override
  _ShoemainState createState() => _ShoemainState();
}

class _ShoemainState extends State<Shoemain> {
  List<Map<String, Object>> list = [
    {
      'image':
          'https://th.bing.com/th/id/R.dc76783581adf83ee048005875f7a96a?rik=PYVD6VMIwdek%2fw&riu=http%3a%2f%2fimages.the-house.com%2fnike-harbor-sb-shoes-blk-white-14-1.jpg&ehk=M1HF5gd0CqbafwbzyCvWj5mFWweQvyET8JHVg2jdXS0%3d&risl=&pid=ImgRaw',
      'itemname': 'Golf Shoes',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.omtK7Z-693ED73hBb2gBwgHaHa?pid=ImgDet&rs=1',
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
          'https://thegadgetflow.com/wp-content/uploads/2019/07/Nike-Joyride-Bead-Filled-Shoes-02.jpg',
      'itemname': 'Fashion Nike',
      'itemprice': '1,799.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.ja4s6irOatV3HSV-PBb_NAHaHa?pid=ImgDet&rs=1',
      'itemname': 'Blue run shoes',
      'itemprice': '1,499.00'
    },
    {
      'image':
          'https://www.gannett-cdn.com/presto/2019/02/11/PSAL/ca0fead9-daa3-4653-bb7a-003506338206-AP19042619536763.jpg?crop=3179,1782,x0,y0&width=3200&height=1680&fit=bounds',
      'itemname': 'Nike Adapt BB',
      'itemprice': '2,000.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.hRK1kLW3unJ8QaaJ9DvrVAHaEc?pid=ImgDet&rs=1',
      'itemname': 'Skate Shoes',
      'itemprice': '1,899.00'
    },
    {
      'image':
          'https://images.the-house.com/nike-sb-bruin-hi-wmns-skate-shoes-cabana-cabana-black-gum-yellow-19-2.jpg',
      'itemname': 'Nike SB Briun Shoes',
      'itemprice': '2,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.gLiGFoVRLQm56k__Ea65ggHaF9?pid=ImgDet&rs=1',
      'itemname': 'Black Run shoes',
      'itemprice': '1,699.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.mC7Z-6Hd9im_t77W2CPGIgHaHa?pid=ImgDet&rs=1',
      'itemname': 'Converse',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.-06Aee9gkPp0CM_quhdmxAHaEJ?pid=ImgDet&rs=1',
      'itemname': 'Night React Hyperdunk',
      'itemprice': '1,799.00'
    },
    {
      'image':
          'https://d34xpxcpbnz20f.cloudfront.net/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/n/i/nike_youth_bombax_turf_shoes_footwear_red.jpeg',
      'itemname': 'Turf Shoes',
      'itemprice': '3,599.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.-eSEJ3JY3f6N0w-1FRk74wHaHa?pid=ImgDet&rs=1',
      'itemname': 'Nike Kids cage Shoes',
      'itemprice': '5,299.00'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Shoes(list);
  }
}
