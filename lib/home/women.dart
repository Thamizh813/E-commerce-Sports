import 'package:bat/clothes.dart';
import 'package:flutter/material.dart';

class WomenMain extends StatefulWidget {
  WomenMain({Key? key}) : super(key: key);

  @override
  _WomenMainState createState() => _WomenMainState();
}

class _WomenMainState extends State<WomenMain> {
  List<Map<String, Object>> list = [
    {
      'image':
          'https://th.bing.com/th/id/OIP.C3lJnwU4E0W1poWTJ7gX8QHaHa?pid=ImgDet&rs=1',
      'itemname': 'Nike Aparel Women',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.Duroc5Vl8qcYKZyBcPwvAQHaHa?pid=ImgDet&rs=1',
      'itemname': 'Sports Top',
      'itemprice': '1,099.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.gCa__nAtNOg6tjrrr1E5hwHaHa?pid=ImgDet&rs=1',
      'itemname': 'T-shirt',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/R.563a8500e77de38fe6c3077041a5c6f3?rik=%2fYi3BcFFc9JI1A&riu=http%3a%2f%2fwww.outfittrends.com%2fwp-content%2fuploads%2f2011%2f04%2fcomplete-nike-sports-wear-for-women.jpg&ehk=L4NfvwyIabzlzybJhfD5qeFsiHMuCW6l9Z3GoJX462I%3d&risl=&pid=ImgRaw',
      'itemname': 'Nike Sports Set',
      'itemprice': '1,799.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/R.6846f40f50bfc56bcf7bd7f09b25d937?rik=Twf%2bBugRCOP6sw&riu=http%3a%2f%2fwww.thefashiontamer.com%2fwp-content%2fuploads%2f2018%2f01%2fsports-clothes-sports-clothes-sports-nike-pants-leggings-tennis-shoes-hwfgvro-.jpg&ehk=12GMB%2b2Vfo0nM6ulzUP1gk8noSXsy%2bSHg6CGmjKv6E0%3d&risl=&pid=ImgRaw',
      'itemname': 'Women Set',
      'itemprice': '4,499.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.JkzuGXPX4buEeNx0u7U0ZwHaHa?pid=ImgDet&rs=1',
      'itemname': 'Sweat Shirt Women',
      'itemprice': '2,000.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.l6_uISMprqR2B6GrbqsHLwHaHa?pid=ImgDet&rs=1',
      'itemname': 'Summer Wear',
      'itemprice': '1,899.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.oOCurz5l55chRHuOi2Z86wHaHa?pid=ImgDet&rs=1',
      'itemname': 'Bright Pink Dress',
      'itemprice': '2,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/R.3b22cbcefd862e481b21ce1e975ad4ab?rik=am4GV5t%2fFZdWCg&riu=http%3a%2f%2fwww.prodirectselect.com%2fproductimages%2fV3_1_Main%2f165190.jpg&ehk=11SOnblSglu9cZBDuSwZ7CbLt7xqxeIaaYcxgv7VnAQ%3d&risl=&pid=ImgRaw',
      'itemname': 'Down Fill Jacket',
      'itemprice': '1,699.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/R.707b209a3eaa27ecb3ab4a37ba2daf4e?rik=0oxwoRyH7VqVdA&riu=http%3a%2f%2fs3.amazonaws.com%2fnikeinc%2fassets%2f17659%2fNike-Running-Womens-BOMBER_JACKET_2a_native_1600.jpg%3f1361379923&ehk=4SCAXDEdQjr4MjqG%2bg4IQMmq3RvnuxWSxusdkCOCxyc%3d&risl=&pid=ImgRaw',
      'itemname': 'Running Spring',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/R.426afd38edde23a3357bb376e6c8cc70?rik=3MX6494o16pTWw&riu=http%3a%2f%2ffashionarrow.com%2fwp-content%2fuploads%2f2017%2f09%2fnike-clothes-women-fashion-swpdgey-.jpg&ehk=UuaN9211ZDhOfkyUDfTIoMZy%2bYm9CRP%2baPEUQP0Yb04%3d&risl=&pid=ImgRaw',
      'itemname': 'Black Set',
      'itemprice': '1,799.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.ajKKKYhYv3VjCxujn7iCigHaHa?pid=ImgDet&rs=1',
      'itemname': 'Run Tech Pack Knit',
      'itemprice': '3,599.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.ajKKKYhYv3VjCxujn7iCigHaHa?pid=ImgDet&rs=1',
      'itemname': 'Logo Hoodie Black',
      'itemprice': '5,299.00'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Men(list);
  }
}
