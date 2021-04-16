import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_store/cartScreen.dart';

import './widgets/categoryCardview.dart';
import 'widgets/recentCardview.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Theme.of(context).backgroundColor,
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 18),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 10),
                margin: EdgeInsets.only(top: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 45,
                      width: 45,
                      child: IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {},
                        color: Color(0xFF606060),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
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
                      child: IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () {
                          Navigator.of(context).pushNamed(CartScreen.routeName);
                        },
                        color: Color(0xFF606060),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 10, top: 10, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Find the',
                              style: TextStyle(
                                  fontSize: 27, color: Color(0xFFD4D9DF)),
                            ),
                            Text(
                              'Best Plants',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 10, top: 10),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.green.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 2,
                  children: <Widget>[
                    CategoryTabs('Top'),
                    CategoryTabs('Indoor'),
                    CategoryTabs('Outdoor'),
                    CategoryTabs('Giganta Plant'),
                    CategoryTabs('Plant Pots'),
                    CategoryTabs('Easy Planted'),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 15,
                  children: <Widget>[
                    CategoryCardView(
                      cardTitle: 'Aloe Vera Plant',
                      price: 50.99,
                      isFavorite: true,
                      imageName: 'plant4',
                    ),
                    CategoryCardView(
                      cardTitle: 'Monstera Deliciosa',
                      price: 36.99,
                      isFavorite: false,
                      imageName: 'plant1',
                    ),
                    CategoryCardView(
                      cardTitle: 'Potted Plant',
                      price: 45.99,
                      isFavorite: false,
                      imageName: 'plant2',
                    ),
                    CategoryCardView(
                      cardTitle: 'Rose Flower',
                      price: 23.55,
                      isFavorite: false,
                      imageName: 'plant3',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Recent Viewed',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 15,
                  children: <Widget>[
                    RecentCardView(
                      cardTitle: 'Aloe Vera Plant',
                      price: 50.99,
                      category: 'Lacking a green',
                      imageName: 'plant4',
                    ),
                    RecentCardView(
                      cardTitle: 'Monstera Deliciosa',
                      price: 36.99,
                      category: 'Lacking a green',
                      imageName: 'plant1',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTabs extends StatefulWidget {
  const CategoryTabs(this.title);

  final String title;

  @override
  _CategoryTabsState createState() => _CategoryTabsState();
}

class _CategoryTabsState extends State<CategoryTabs> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (!isTapped) {
            isTapped = true;
          } else {
            isTapped = false;
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isTapped ? Theme.of(context).primaryColor : Colors.white,
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
          widget.title,
          style: TextStyle(
            fontWeight: isTapped ? FontWeight.w900 : FontWeight.w300,
            fontSize: 16,
            color: isTapped ? Colors.white : Colors.black54,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
    );
  }
}
