import 'package:bat/clothes.dart';
import 'package:bat/components/homeslider.dart';
import 'package:bat/components/sliderforclothes.dart';

import 'package:flutter/material.dart';

class MenMains extends StatefulWidget {
  MenMains({Key? key}) : super(key: key);

  @override
  _MenMainsState createState() => _MenMainsState();
}

class _MenMainsState extends State<MenMains> {
  List<Map<String, Object>> list = [
    {
      'image':
          'https://th.bing.com/th/id/OIP.DqTpW9G9v6So3_g6GKTVowHaHa?pid=ImgDet&rs=1',
      'itemname': 'Nike Knitted Jacket',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/R.09fe3033526ccd4532d0c278de813e7a?rik=ZMX6jQNeX%2bjqZw&riu=http%3a%2f%2fwww.steptorun.com%2fshop%2ficon%2fb1%2f611467-473.jpg&ehk=5Avh4%2bICaDTIxUUZfoJ21NkwLZECMgz3unz5u28cmCE%3d&risl=&pid=ImgRaw',
      'itemname': 'Sweat shirt',
      'itemprice': '1,099.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.omtK7Z-693ED73hBb2gBwgHaHa?pid=ImgDet&rs=1',
      'itemname': 'Nike Path Winter',
      'itemprice': '1,099.00'
    },
    {
      'image':
          'https://d34xpxcpbnz20f.cloudfront.net/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/n/i/nike_youth_bombax_turf_shoes_footwear_red.jpeg',
      'itemname': 'Turf Shoes',
      'itemprice': '3,599.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/R.c5fda7bb1dcedb838343e68cab3078ae?rik=gzAk6pK5FE6DAQ&riu=http%3a%2f%2fwww.hypebeast.com%2fimage%2f2009%2f07%2fnike-sportswear-2009-fw-apparel-1.jpg&ehk=EDvY10F1YhpDBntq3CQH4BT4NANU3Z9kIJRfMMSgBKU%3d&risl=&pid=ImgRaw',
      'itemname': 'Nike cool jacket',
      'itemprice': '1,499.00'
    },
    {
      'image':
          'https://rukminim1.flixcart.com/image/612/612/jtiz0cw0/kit/h/x/a/ccr-7-with-air-pump-74152-sbs-original-imafetszh7fagwmz.jpeg?q=70',
      'itemname': 'SBS - CCR7',
      'itemprice': '1,099.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.U7ubNa7YJUGPpUb_se1y8QHaHa?pid=ImgDet&rs=1',
      'itemname': 'Mens Outdoor clothes',
      'itemprice': '1,899.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.Q0VPHwinbfq-KPRJo4cs_QHaHa?pid=ImgDet&rs=1',
      'itemname': 'Nike Blue Ribbon T-shirt',
      'itemprice': '2,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.AH2lQJ_kVHD01IQnzpG1dAHaHa?pid=ImgDet&rs=1',
      'itemname': 'Sports long sleeve',
      'itemprice': '1,699.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/R.562c54656158202cdb12bfb9d47228b6?rik=YqnijIncW%2b7osQ&riu=http%3a%2f%2fwww.prodirectselect.com%2fproductimages%2fV3_1_Main%2f136196.jpg&ehk=hWX7CPk%2fbMqnZSYPaFnhFLbDxiOyccYEdys2FgtoEh4%3d&risl=&pid=ImgRaw',
      'itemname': 'Sweat Shirt',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.j7O4SybeR-geq_8Nw77wCQHaHa?pid=ImgDet&rs=1',
      'itemname': 'Set Dress',
      'itemprice': '1,799.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/R.169860637ae0122f39db54326e871ea9?rik=miUvBahWlBFZsA&riu=http%3a%2f%2fwww.leisure-sport.co.uk%2fwp-content%2fuploads%2f2014%2f03%2fnike-park-knit-mens-football-shorts-448224_010_a.jpg&ehk=3pvmncsaWlR4JyyY6fW5%2foXpvrZdx%2fghHFGBFWZHRzc%3d&risl=&pid=ImgRaw',
      'itemname': 'Park Knit Shorts',
      'itemprice': '3,599.00'
    },
    {
      'image':
          'https://ethlits.com/media/catalog/product/cache/1/thumbnail/4f9502202b77059316180a23e4857517/s/s/ss_player_series_cricket_wicket_keeping_gloves_mens_size_ethlits.com_1_.jpg',
      'itemname': 'WK Gloves',
      'itemprice': '799.00'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Homeslider(list);
  }
}
