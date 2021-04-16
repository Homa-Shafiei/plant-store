
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../itemScreen.dart';

class RecentCardView extends StatelessWidget {
  const RecentCardView({this.cardTitle, this.price, this.category, this.imageName});

  final String cardTitle;
  final double price;
  final String category;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 250,
      padding: EdgeInsets.all(10),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            height: 100,
            width: 100,
          ),
          Positioned(
            left: 5,
            top: 5,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(ItemScreen.routeName);
              },
              child: Container(
                height: 90,
                width: 90,
                child: Image.asset('assets/images/$imageName.png'),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 5,
            child: Container(
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    cardTitle,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    category,
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\$$price',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}