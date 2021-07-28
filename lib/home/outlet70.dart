import 'package:bat/clothes.dart';
import 'package:bat/components/sliderforclothes.dart';

import 'package:flutter/material.dart';

class Outlet extends StatefulWidget {
  Outlet({Key? key}) : super(key: key);

  @override
  _OutletState createState() => _OutletState();
}

class _OutletState extends State<Outlet> {
  List<Map<String, Object>> list = [
    {
      'image':
          'https://th.bing.com/th/id/OIP.DqTpW9G9v6So3_g6GKTVowHaHa?pid=ImgDet&rs=1',
      'itemname': 'Nike Knitted Jacket',
      'itemprice': '999.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/R.446cebe5c063449a414acc6cd0494f5c?rik=MZ%2fuHh9Q4nexVg&riu=http%3a%2f%2fimages.esellerpro.com%2f2466%2fI%2f334%2f93%2f38645.jpg&ehk=z8%2bJ4aIPSI3MDQN8JvKWZKGRz5NmYgVQm9uq9zTv1cA%3d&risl=&pid=ImgRaw',
      'itemname': 'CheerLeader Costumes',
      'itemprice': '899.00'
    },
    {
      'image':
          'https://4.imimg.com/data4/WM/GJ/MY-6907921/mens-sports-dress-500x500.jpg',
      'itemname': 'Sports Set',
      'itemprice': '999.00'
    },
    {
      'image':
          'https://images.the-house.com/nike-sb-bruin-hi-wmns-skate-shoes-cabana-cabana-black-gum-yellow-19-2.jpg',
      'itemname': 'Nike SB Briun Shoes',
      'itemprice': '899.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/R.c5fda7bb1dcedb838343e68cab3078ae?rik=gzAk6pK5FE6DAQ&riu=http%3a%2f%2fwww.hypebeast.com%2fimage%2f2009%2f07%2fnike-sportswear-2009-fw-apparel-1.jpg&ehk=EDvY10F1YhpDBntq3CQH4BT4NANU3Z9kIJRfMMSgBKU%3d&risl=&pid=ImgRaw',
      'itemname': 'Nike cool jacket',
      'itemprice': '499.00'
    },
    {
      'image':
          'https://5.imimg.com/data5/YS/XX/MY-8683446/men-sports-dress-500x500.jpg',
      'itemname': 'Red Combo',
      'itemprice': '500.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.U7ubNa7YJUGPpUb_se1y8QHaHa?pid=ImgDet&rs=1',
      'itemname': 'Mens Outdoor clothes',
      'itemprice': '899.00'
    },
    {
      'image':
          'https://rukminim1.flixcart.com/image/612/612/jj367bk0/kit/z/m/h/ultimate-protection-one-pair-large-shin-guard-one-pair-lycra-original-imaf6rfhmhhsjbyd.jpeg?q=70',
      'itemname': 'Protection',
      'itemprice': '399.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.AH2lQJ_kVHD01IQnzpG1dAHaHa?pid=ImgDet&rs=1',
      'itemname': 'Sports long sleeve',
      'itemprice': '699.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/R.562c54656158202cdb12bfb9d47228b6?rik=YqnijIncW%2b7osQ&riu=http%3a%2f%2fwww.prodirectselect.com%2fproductimages%2fV3_1_Main%2f136196.jpg&ehk=hWX7CPk%2fbMqnZSYPaFnhFLbDxiOyccYEdys2FgtoEh4%3d&risl=&pid=ImgRaw',
      'itemname': 'Sweat Shirt',
      'itemprice': '799.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.j7O4SybeR-geq_8Nw77wCQHaHa?pid=ImgDet&rs=1',
      'itemname': 'Set Dress',
      'itemprice': '599.00'
    },
    {
      'image':
          'https://rukminim1.flixcart.com/image/612/612/jj367bk0/kit/z/m/h/ultimate-protection-one-pair-large-shin-guard-one-pair-lycra-original-imaf6rfhmhhsjbyd.jpeg?q=70',
      'itemname': 'Protection',
      'itemprice': '799.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.uz_6hDpARO_-H0opbJo7PgHaHa?pid=ImgDet&rs=1',
      'itemname': 'Grey Shorts',
      'itemprice': '699.00'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Slider1(list);
  }
}
