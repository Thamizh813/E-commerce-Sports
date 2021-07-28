import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(color: Colors.black),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 130),
                child: InkWell(
                  onTap: () => launch(
                      "https://www.nike.com/in/retail?page=1&storesPerPage=15"),
                  child: Text(
                    "FIND A STORE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 170),
                child: InkWell(
                  onTap: () => launch("https://www.nike.com/in/help"),
                  child: Text(
                    "GET HELP",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 170),
                child: InkWell(
                  onTap: () => launch("https://about.nike.com/"),
                  child: Text(
                    "ABOUT NIKE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 128),
                child: InkWell(
                  onTap: () => launch("https://www.nike.com/in/register"),
                  child: Text(
                    "BECOME A MEMBER",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 155),
                child: InkWell(
                  onTap: () => launch("https://www.nike.com/orders/details/"),
                  child: Text(
                    "ORDER STATUS",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 160),
                child: InkWell(
                  onTap: () => launch("https://news.nike.com/"),
                  child: Text(
                    "NEWS",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: InkWell(
                  onTap: () => launch("https://www.instagram.com/nike/"),
                  child: Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: InkWell(
                    onTap: () => launch("https://www.facebook.com/nike"),
                    child: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                      size: 40,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: () => launch("https://www.youtube.com/user/nike"),
                  child: Icon(
                    FontAwesomeIcons.youtube,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: InkWell(
                    onTap: () => launch("https://twitter.com/Nike"),
                    child: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                      size: 40,
                    ),
                  )),
            ],
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 20, left: 128),
                  child: InkWell(
                    onTap: () => launch(""),
                    child: Text(
                      "SIGN UP FOR EMAIL",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 20, left: 158),
                  child: InkWell(
                    onTap: () => launch("https://www.nike.com/in/help/a/shipping-delivery-gs"),
                    child: Text(
                      "DELIVERY",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 20, left: 194),
                  child: InkWell(
                    onTap: () => launch("https://jobs.nike.com/"),
                    child: Text(
                      "CAREERS",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 20, left: 125),
                  child: InkWell(
                    onTap: () => launch("https://www.nike.com/in/help/a/student-discount-gs"),
                    child: Text(
                      "STUDENT DISCOUNTS",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 20, left: 148),
                  child: InkWell(
                    onTap: () => launch("https://www.nike.com/in/help/a/returns-policy-gs"),
                    child: Text(
                      "RETURNS",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 194),
                child: InkWell(
                  onTap: () => launch("https://investors.nike.com/Home/default.aspx"),
                  child: Text(
                    "INVESTORS",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 20, left: 125),
                  child: InkWell(
                    onTap: () => launch(""),
                    child: Text(
                      "SEND US FEEDBACK",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 20, left: 158),
                  child: InkWell(
                    onTap: () => launch("https://www.nike.com/in/help/a/payment-options-gs"),
                    child: Text(
                      "PAYMENT OPTIONS",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 20, left: 130),
                  child: InkWell(
                    onTap: () => launch("https://www.nike.com/in/sustainability"),
                    child: Text(
                      "SUSTAINABILITY",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                    onTap: () => launch("https://www.nike.com/in/adapt"),
                    child: Text(
                      "Guides",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    )),
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    onTap: () => launch("https://www.eshopworld.com/shoppers/help/terms-and-conditions-of-sale-en/"),
                    child: Text(
                      "Terms of sale",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    onTap: () => launch("https://agreementservice.svs.nike.com/in/en_gb/rest/agreement?agreementType=termsOfUse&uxId=com.nike&country=IN&language=en&requestType=redirect"),
                    child: Text(
                      "Terms of use",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    onTap: () => launch("https://agreementservice.svs.nike.com/sg/en_gb/rest/agreement?agreementType=privacyPolicy&uxId=com.nike.unite&country=SG&language=en&requestType=redirect"),
                    child: Text(
                      "Nike Privacy Policy",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
