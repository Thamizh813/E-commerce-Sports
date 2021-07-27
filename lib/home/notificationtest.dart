import 'package:bat/home/notification.dart';
import 'package:flutter/material.dart';

class notifytext extends StatefulWidget {
  @override
  _notifytextState createState() => _notifytextState();
}

class _notifytextState extends State<notifytext> {
  List<Map<String, Object>> list = [
    {
      'text':
          'Best Offers & Discounts The festive season is right around the corner and that can only mean one thing: discounts, discounts and discounts'
    },
    {
      'text':
          'Fashion Sale – Upto 80% Off | Exciting Cashback on Men-Women Fashion Clothing.'
    },
    {
      'text':
          'This Nike Shoppy discounts you Rs.500 on spending above Rs.1,899 with Visa cards'
    },
    {
      'text':
          'Get up to 80% OFF on Sports products across the site with exciting offers up for grabs!'
    },
    {'text': 'Kids Fashion: Get 10% OFF on orders over Rs.999 now!'},
    {
      'text':
          'Buy Sports Products Online If you are planning to buy sports stuff for indoor or outdoor, we offer a wide range of sports porducts with competitive discounts.'
    },
    {'text': 'Shop online wide range of Sports Shoes For Men upto 87% off'},
    {
      'text':
          'Get Rs.500 Off + Free Delivery on First Purchase. Exciting deals for everyone.'
    },
    {
      'text':
          'The best products under womens clothing can be found right here at the best prices.'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Notify(list);
  }
}
