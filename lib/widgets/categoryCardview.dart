
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../itemScreen.dart';

class CategoryCardView extends StatelessWidget {
  const CategoryCardView({this.cardTitle, this.price, this.isFavorite, this.imageName});

  final String cardTitle;
  final double price;
  final bool isFavorite;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 230,
      padding: EdgeInsets.all(10),
      child: Stack(
        overflow: Overflow.visible,
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
                  offset: Offset(0, 1),
                ),
              ],
            ),
            height: 270,
            width: 210,
          ),
          Positioned(
            left: 10,
            top: 5,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(ItemScreen.routeName);
              },
              child: Container(
                padding: EdgeInsets.only(
                  left: 36,
                ),
                height: 240,
                width: 160,
                child: Image.asset('assets/images/$imageName.png'),
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
              color: isFavorite ? Colors.red : Colors.black12,
            ),
          ),
          Positioned(
            bottom: 27,
            left: 27,
            child: Container(
              alignment: Alignment.bottomLeft,
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