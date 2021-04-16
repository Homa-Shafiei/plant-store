import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../itemScreen.dart';

class CartCardView extends StatelessWidget {
  const CartCardView({this.cardTitle, this.price, this.count, this.imageName});

  final String cardTitle;
  final double price;
  final int count;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      child: Stack(
        clipBehavior: Clip.none,
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
            height: 110,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            left: 5,
            top: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    height: 80,
                    width: 80,
                    child: Image.asset('assets/images/$imageName.png'),
                  ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.all(10),
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
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget> [
                            CircleAvatar(
                              backgroundColor: Color(0xFFE8F6ED),
                              radius: 10,
                              child: IconButton(
                                iconSize: 9,
                                padding: EdgeInsets.zero,
                                icon: Icon(Icons.remove),
                                color: Colors.black87,
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(5),
                              child: Text(
                                '$count',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 10,
                              child: IconButton(
                                iconSize: 9,
                                padding: EdgeInsets.zero,
                                icon: Icon(Icons.add),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 2,
            right: 2,
            child: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {},
              color: Colors.grey,
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Text(
              '\$$price',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
