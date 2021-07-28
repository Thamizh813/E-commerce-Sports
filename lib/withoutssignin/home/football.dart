import 'package:bat/components/sliderforsports.dart';
import 'package:flutter/material.dart';

class Football extends StatefulWidget {
  Football({Key? key}) : super(key: key);

  @override
  _FootballState createState() => _FootballState();
}

class _FootballState extends State<Football> {
  List<Map<String, Object>> list = [
    {
      'image':
          'https://rukminim1.flixcart.com/image/612/612/jtiz0cw0/kit/h/x/a/ccr-7-with-air-pump-74152-sbs-original-imafetszh7fagwmz.jpeg?q=70',
      'itemname': 'SBS - CCR7',
      'itemprice': '1,099.00'
    },
    {
      'image':
          'https://rukminim1.flixcart.com/image/612/612/jj367bk0/kit/z/m/h/ultimate-protection-one-pair-large-shin-guard-one-pair-lycra-original-imaf6rfhmhhsjbyd.jpeg?q=70',
      'itemname': 'Protection',
      'itemprice': '1,099.00'
    },
    {
      'image':
          'https://rukminim1.flixcart.com/image/612/612/ke1pnrk0/kit/z/v/h/6-inch-cones-pack-6-10-space-markers-and-4-meter-ladder-agility-original-imafut7wqngssxcw.jpeg?q=70',
      'itemname': 'Cones PAck',
      'itemprice': '899.00'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtXY5m38wiAlVLgCfkD7kLsyBF661qDrXL2A&usqp=CAU',
      'itemname': 'Cricket kit bag',
      'itemprice': '7,299.00'
    },
    {
      'image':
          'https://rukminim1.flixcart.com/image/612/612/kmccosw0/kit/s/y/s/soccer-training-soccerkit-sahni-sports-original-imagf9nguffzmzr8.jpeg?q=70',
      'itemname': 'Training Kit',
      'itemprice': '4,399.00'
    },
    {
      'image':
          'https://rukminim1.flixcart.com/image/612/612/kcxpbww0/kit/s/4/w/soccer-training-system-saq-sctk-02-sklz-original-imaftyywuyqjbprv.jpeg?q=70',
      'itemname': 'Football Kit',
      'itemprice': '999.00'
    },
    {
      'image':
          'https://rukminim1.flixcart.com/image/612/612/kgsb1jk0/kit/f/s/3/indian-club-football-kit-one-pair-football-socks-one-pair-shin-original-imafwy2nutgd8faz.jpeg?q=70',
      'itemname': 'Premium Kit',
      'itemprice': '1,499.00'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Cricketmaterial(list);
  }
}
