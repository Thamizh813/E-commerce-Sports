import 'package:bat/yadava.dart';
import 'package:flutter/material.dart';

class Cricketmain extends StatefulWidget {
  Cricketmain({Key? key}) : super(key: key);

  @override
  _CricketmainState createState() => _CricketmainState();
}

class _CricketmainState extends State<Cricketmain> {
  List<Map<String, Object>> list = [
    {
      'image':
          'https://images-na.ssl-images-amazon.com/images/I/41pRijlJJ1L._SY679_.jpg',
      'itemname': 'KOOKABURRA BEAST 6.3 CRI',
      'itemprice': '2,299.00'
    },
    {
      'image':
          'https://5.imimg.com/data5/CL/RC/QC/SELLER-81576955/cricket-helmet-500x500.jpg',
      'itemname': 'CEAT bat',
      'itemprice': '3,099.00'
    },
    {
      'image':
          'https://cdn.shopify.com/s/files/1/0257/4601/4261/products/f34562f2-286c-43b0-91fc-1a5f8ed65e6c_347x700.jpg?v=1596782184',
      'itemname': 'SG bat',
      'itemprice': '2,299.00'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtXY5m38wiAlVLgCfkD7kLsyBF661qDrXL2A&usqp=CAU',
      'itemname': 'Cricket kit bag',
      'itemprice': '7,299.00'
    },
    {
      'image':
          'https://www.sportsuncle.com/image/cache/catalog/images/kookaburra/1a1101m01-cricket-ball-turf-red-front-800x800.webp',
      'itemname': 'Kookubura turf ball',
      'itemprice': '1,199.00'
    },
    {
      'image':
          'https://images-na.ssl-images-amazon.com/images/I/4125d5RJ%2BzL.jpg',
      'itemname': 'Count White ball',
      'itemprice': '2,399.00'
    },
    {
      'image':
          'https://images-na.ssl-images-amazon.com/images/I/51Q0Ph9JmdL.jpg',
      'itemname': 'SG Helmet',
      'itemprice': '999.00'
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
          'https://www.sportsuncle.com/image/catalog/images/dsc/comdor-motion.jpg',
      'itemname': 'DSC batting glove',
      'itemprice': '599.00'
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
