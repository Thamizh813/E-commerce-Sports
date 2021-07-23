import 'package:bat/clothes.dart';
import 'package:bat/components/sliderforclothes.dart';

import 'package:flutter/material.dart';

class Clothmain extends StatefulWidget {
  Clothmain({Key? key}) : super(key: key);

  @override
  _ClothmainState createState() => _ClothmainState();
}

class _ClothmainState extends State<Clothmain> {
  List<Map<String, Object>> list = [
    {
      'image':
          'https://th.bing.com/th/id/OIP.bK5T96KmEImuHxX7SYwynAHaHa?pid=ImgDet&w=750&h=750&rs=1',
      'itemname': 'Tennis T-shirt',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.hRCyyYBC3iqqMPq0adN2ewHaHa?pid=ImgDet&w=800&h=800&rs=1',
      'itemname': 'Basketball Shorst',
      'itemprice': '1,099.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/R.446cebe5c063449a414acc6cd0494f5c?rik=MZ%2fuHh9Q4nexVg&riu=http%3a%2f%2fimages.esellerpro.com%2f2466%2fI%2f334%2f93%2f38645.jpg&ehk=z8%2bJ4aIPSI3MDQN8JvKWZKGRz5NmYgVQm9uq9zTv1cA%3d&risl=&pid=ImgRaw',
      'itemname': 'CheerLeader Costumes',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.raAlu2Y8tuBykZuu2lt0IwHaJT?pid=ImgDet&rs=1',
      'itemname': 'Tennis Pink Suit',
      'itemprice': '1,799.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.NwQ__Fvwo2wJWLXIOsvxhwHaHa?pid=ImgDet&rs=1',
      'itemname': 'Leotards',
      'itemprice': '1,499.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.StmwFfaJDO-XDzsvHrf3BQHaHa?pid=ImgDet&rs=1',
      'itemname': 'Baby Boy Dress',
      'itemprice': '2,000.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.x1P5fz9iJLcXwYuacwSgngHaHa?pid=ImgDet&w=800&h=800&rs=1',
      'itemname': 'Kids Winter Suit',
      'itemprice': '1,899.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.e4yWGWIbK8__idL4RAy81gHaHa?pid=ImgDet&rs=1',
      'itemname': 'Girls Ballet Dress',
      'itemprice': '2,299.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.drtqCjfisVmchasOrKFOTAHaHa?pid=ImgDet&rs=1',
      'itemname': 'Kids Escort',
      'itemprice': '1,699.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.qIc-wd0KfiFjHgmTMJWD1AHaHa?pid=ImgDet&rs=1',
      'itemname': 'Superman Kids',
      'itemprice': '1,299.00'
    },
    {
      'image':
          'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto/nsdlrwjeuwwwvjad4ifk/sportswear-air-younger-short-sleeve-fleece-dress-2M9sS6.jpg',
      'itemname': 'Night Black Dress',
      'itemprice': '1,799.00'
    },
    {
      'image':
          'https://c.static-nike.com/a/images/t_PDP_1280_v1/f_auto/jxsykjtrcbbmdwriondn/sportswear-older-fleece-dress-6ZdxWK.jpg',
      'itemname': 'Nike Todlar',
      'itemprice': '3,599.00'
    },
    {
      'image':
          'https://th.bing.com/th/id/OIP.q7iMw0gaeAPFto3KmjcGVQHaHa?pid=ImgDet&rs=1',
      'itemname': 'Nike Kids clothes',
      'itemprice': '5,299.00'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Slider1(list);
  }
}
