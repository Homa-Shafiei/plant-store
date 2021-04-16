import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './homeScreen.dart';

class ItemScreen extends StatelessWidget {
  static const routeName = '/item-screen';
  final Color titleColor = Colors.white;
  final Color categColor = Color.fromRGBO(255, 255, 255, 0.6);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(
            top: 18,
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
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
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 36, top: 36),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Aloe vera',
                      style: TextStyle(
                        color: titleColor,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Day (estimation)',
                      style: TextStyle(
                        color: categColor,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '24',
                      style: TextStyle(
                        color: titleColor,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Height (incl pot)',
                      style: TextStyle(
                        color: categColor,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '4.8',
                      style: TextStyle(
                        color: titleColor,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Water',
                      style: TextStyle(
                        color: categColor,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Once a week',
                      style: TextStyle(
                        color: titleColor,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.44,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 240,
                    left: 144,
                    child: Container(
                      height: 280,
                      width: 250,
                      child: Image.asset('assets/images/plant4.png'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 72, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Description',
                                style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
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
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(5),
                                child: Text(
                                  '01',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
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
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Echinopsis pachanoi kwnon as San Pedro cactus is a fast-growing columnar cactus native '
                          'to the Andes Mounta at 2,000-3,000 m in altitude. It is found in Argentina, Bolivia, Chile…',
                          style: TextStyle(
                              color: Colors.blueGrey,
                              wordSpacing: 2,
                              height: 1.5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
