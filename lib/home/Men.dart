import 'package:bat/clothes.dart';
import 'package:bat/slider.dart';
import 'package:flutter/material.dart';

class MenMain extends StatefulWidget {
  MenMain({Key? key}) : super(key: key);

  @override
  _MenMainState createState() => _MenMainState();
}

class _MenMainState extends State<MenMain> {
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
          'https://4.imimg.com/data4/WM/GJ/MY-6907921/mens-sports-dress-500x500.jpg',
      'itemname': 'Sports Set',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.PgOxP7zK475GJr2DEb7zaQHaHa?pid=ImgDet&rs=1',
      'itemname': 'Running Combo Set',
      'itemprice': '1,799.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/R.c5fda7bb1dcedb838343e68cab3078ae?rik=gzAk6pK5FE6DAQ&riu=http%3a%2f%2fwww.hypebeast.com%2fimage%2f2009%2f07%2fnike-sportswear-2009-fw-apparel-1.jpg&ehk=EDvY10F1YhpDBntq3CQH4BT4NANU3Z9kIJRfMMSgBKU%3d&risl=&pid=ImgRaw',
      'itemname': 'Nike cool jacket',
      'itemprice': '1,499.00'
    },
    {
      'image':
          'https://5.imimg.com/data5/YS/XX/MY-8683446/men-sports-dress-500x500.jpg',
      'itemname': 'Red Combo',
      'itemprice': '2,000.00'
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
          'https://th.bing.com/th/id/OIP.uz_6hDpARO_-H0opbJo7PgHaHa?pid=ImgDet&rs=1',
      'itemname': 'Grey Shorts',
      'itemprice': '1,299.00'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Slider1(list);
  }
}
