import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_store/widgets/cartCardview.dart';
import 'package:plant_store/widgets/recentCardview.dart';

import './homeScreen.dart';
import 'widgets/mySeparator.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart-screen';
  final Color titleColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(
            top: 18,
          ),
          color: Theme.of(context).backgroundColor,
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: Icon(
                          Icons.keyboard_backspace,
                          color: Colors.black87,
                          size: 27,
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(HomeScreen.routeName);
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Cart',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: Icon(
                          Icons.keyboard_backspace,
                          color: Colors.white,
                          size: 27,
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(HomeScreen.routeName);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Wrap(
                    spacing: 15,
                    children: <Widget>[
                      CartCardView(
                        cardTitle: 'Aloe Vera Plant',
                        price: 50.99,
                        count: 1,
                        imageName: 'plant4',
                      ),
                      CartCardView(
                        cardTitle: 'Monstera Deliciosa',
                        price: 36.99,
                        count: 2,
                        imageName: 'plant1',
                      ),
                      CartCardView(
                        cardTitle: 'Potted Plant',
                        price: 45.99,
                        count: 3,
                        imageName: 'plant2',
                      )
                    ],
                  ),
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.44,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 40, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Subtotal',
                                style: TextStyle(
                                  color: titleColor,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '\$950',
                                style: TextStyle(
                                  color: titleColor,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Tax & Fee',
                                style: TextStyle(
                                  color: titleColor,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '\$50',
                                style: TextStyle(
                                  color: titleColor,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Delivery',
                                style: TextStyle(
                                  color: titleColor,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '\$40',
                                style: TextStyle(
                                  color: titleColor,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        const MySeparator(height: 0.5, color: Colors.white60),
                        SizedBox(height: 15),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Total',
                                style: TextStyle(
                                  color: titleColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '\$1040',
                                style: TextStyle(
                                  color: titleColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Text(
                            'Checkout',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 12),
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
