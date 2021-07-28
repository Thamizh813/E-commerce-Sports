import 'package:bat/components/sliderforsports.dart';
import 'package:flutter/material.dart';

class Cricketmain4 extends StatefulWidget {
  Cricketmain4({Key? key}) : super(key: key);

  @override
  _Cricketmain4State createState() => _Cricketmain4State();
}

class _Cricketmain4State extends State<Cricketmain4> {
  List<Map<String, Object>> list = [
    {
      'image':
          'https://images-na.ssl-images-amazon.com/images/I/41pRijlJJ1L._SY679_.jpg',
      'itemname': 'KOOKABURRA BEAST 6.3 CRI',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.omtK7Z-693ED73hBb2gBwgHaHa?pid=ImgDet&rs=1',
      'itemname': 'Cricket shoe',
      'itemprice': '999.00'
    },
    {
      'image':
          'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto/nsdlrwjeuwwwvjad4ifk/sportswear-air-younger-short-sleeve-fleece-dress-2M9sS6.jpg',
      'itemname': 'Night Black Dress',
      'itemprice': '799.00'
    },
    {
      'image':
          'https://5.imimg.com/data5/SELLER/Default/2020/10/MX/YQ/CY/21883350/dsc-beamer-cricket-shoes-grey-white-500x500.jpg',
      'itemname': 'dsc shoe',
      'itemprice': '499.00'
    },
    {
      'image':
          'https://www.sportsuncle.com/image/cache/catalog/images/kookaburra/1a1101m01-cricket-ball-turf-red-front-800x800.webp',
      'itemname': 'Kookubura turf ball',
      'itemprice': '199.00'
    },
    {
      'image':
          'https://images-na.ssl-images-amazon.com/images/I/4125d5RJ%2BzL.jpg',
      'itemname': 'Count White ball',
      'itemprice': '399.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/R.3b22cbcefd862e481b21ce1e975ad4ab?rik=am4GV5t%2fFZdWCg&riu=http%3a%2f%2fwww.prodirectselect.com%2fproductimages%2fV3_1_Main%2f165190.jpg&ehk=11SOnblSglu9cZBDuSwZ7CbLt7xqxeIaaYcxgv7VnAQ%3d&risl=&pid=ImgRaw',
      'itemname': 'Down Fill Jacket',
      'itemprice': '1,699.00'
    },
    {
      'image':
          'https://images-na.ssl-images-amazon.com/images/I/41lL-wyURPL._SY450_.jpg',
      'itemname': 'guard SG ',
      'itemprice': '499.00'
    },
    {
      'image':
          'https://images-na.ssl-images-amazon.com/images/I/91EJ25lYE9L._SL1500_.jpg',
      'itemname': 'MRF Batting Glove ',
      'itemprice': '599.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/R.707b209a3eaa27ecb3ab4a37ba2daf4e?rik=0oxwoRyH7VqVdA&riu=http%3a%2f%2fs3.amazonaws.com%2fnikeinc%2fassets%2f17659%2fNike-Running-Womens-BOMBER_JACKET_2a_native_1600.jpg%3f1361379923&ehk=4SCAXDEdQjr4MjqG%2bg4IQMmq3RvnuxWSxusdkCOCxyc%3d&risl=&pid=ImgRaw',
      'itemname': 'Running Spring',
      'itemprice': '299.00'
    },
    {
      'image':
          'https://ethlits.com/media/catalog/product/cache/1/thumbnail/4f9502202b77059316180a23e4857517/s/s/ss_player_series_cricket_wicket_keeping_gloves_mens_size_ethlits.com_1_.jpg',
      'itemname': 'WK Gloves',
      'itemprice': '799.00'
    },
    {
      'image':
          'https://5.imimg.com/data5/IP/JM/IL/SELLER-48760690/super-test-inner-thigh-pad-500x500.jpeg',
      'itemname': 'Inner tigh pad',
      'itemprice': '299.00'
    },
    {
      'image':
          'https://rukminim1.flixcart.com/image/416/416/k5y7tzk0/sport-glove/p/j/c/left-right-gloves-test-wicket-keeping-men-size-9-100-7-5-inner-original-imaeyddyyhjgzyqc.jpeg?q=70',
      'itemname': 'Inner glove',
      'itemprice': '199.00'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Cricketmaterial(list);
  }
}
