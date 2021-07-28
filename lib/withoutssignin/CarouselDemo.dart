import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://th.bing.com/th/id/R.c07e7f6b6ccca5235273be0a1a33ccd8?rik=s6MrnFPm1%2bMqWw&riu=http%3a%2f%2fwww.paisebachaoindia.com%2fwp-content%2fuploads%2f2015%2f07%2fimg7.png&ehk=E%2f6Ec9oHK1AVwtZLe78yS9EwshazDvsPzsJZ5vm%2b0J8%3d&risl=&pid=ImgRaw',
  'https://cdn.static-zoutons.com/images/originals/blog/baner1_1592314502.png',
  'https://th.bing.com/th/id/OIP.Y8WOII5tDyDG9jd4PSUz8AHaEh?pid=ImgDet&rs=1',
  'https://th.bing.com/th/id/OIP.HD8v8QvrWoeUKqSPhvthvgHaEx?pid=ImgDet&rs=1',
  'https://4.bp.blogspot.com/-E_zx76WBSAs/U7JxubW47QI/AAAAAAAADBI/lqk1-qHVtcs/s1600/offerszone-gold.jpg',
  'https://th.bing.com/th/id/R.3f22e87896dbab3c62e383d073a3e502?rik=j4Wtba6uRPJEPA&riu=http%3a%2f%2f2.bp.blogspot.com%2f-R4f1_BxR_Xc%2fTm5mJeoOFAI%2fAAAAAAAABaU%2facEau6jzdtA%2fs1600%2fhart1a_nike_running_clothes.jpg&ehk=gTC99F2kIkywXcMrDZJOZYIKjbWELtOI%2f8qtmTs7cQM%3d&risl=&pid=ImgRaw',
  'https://th.bing.com/th/id/OIP.q0x27MrppwZY0vqxk-8kbQHaHa?pid=ImgDet&rs=1',
  'https://th.bing.com/th/id/R.3c0a6f63c456b788f8dcdb04fdd644f8?rik=HjbeSFwZ0Djuhw&riu=http%3a%2f%2fwww.brandedgirls.com%2fwp-content%2fuploads%2f2015%2f06%2fWinter-NIke-Sports-dress.png&ehk=KSrZfT84gniyoPczW%2bmGfrpYJTRUblgRQpNm0rEfGl0%3d&risl=&pid=ImgRaw',
  'https://th.bing.com/th/id/R.fa590494c8f662754c9c63ddd50949ab?rik=US2cUMKY3Sf5VQ&riu=http%3a%2f%2fmedia.kohls.com.edgesuite.net%2fis%2fimage%2fkohls%2fnike-20140725-kids%3fscl%3d1%26qlt%3d40%2c1%26fmt%3dpjpeg&ehk=UXcBDrtVM9ZN3oMDco6ye4t3PwWwzeyuhJKdMxwzj%2fc%3d&risl=&pid=ImgRaw',
  'https://i2.wp.com/bleumag.com/v2/wp-content/uploads/2018/07/image.png?fit=1200%2C710'
];

class CarouselDemo extends StatefulWidget {
  @override
  _CarouselDemoState createState() => _CarouselDemoState();
}

class _CarouselDemoState extends State<CarouselDemo> {
  late CarouselSlider instance;

  @override
  Widget build(BuildContext context) {
    instance = new CarouselSlider(
      items: imgList.map((url) {
        return new Container(
          margin: new EdgeInsets.symmetric(horizontal: 4.0),
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new CachedNetworkImageProvider(url, maxHeight: 400),
              )),
        );
      }).toList(),
      options: CarouselOptions(
        viewportFraction: 0.9,
        aspectRatio: 2.0,
        autoPlay: false,
        height: 500.0,
      ),
    );
    return new ListView(
      children: <Widget>[
        new Padding(
            padding: new EdgeInsets.symmetric(vertical: 8.0), child: instance),
      ],
    );
  }
}
