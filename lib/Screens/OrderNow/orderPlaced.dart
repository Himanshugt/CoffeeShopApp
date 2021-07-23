// @dart=2.9

import 'package:coffeeshopapp/Home/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class OrderPlaced extends StatefulWidget {
  const OrderPlaced({key}) : super(key: key);

  @override
  _OrderPlacedState createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),

              Positioned(
                child: Container(
                  height: 5*MediaQuery.of(context).size.height/24,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.brown[200],
                    child: ListView(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 25,left: 25),
                              width: 2*MediaQuery.of(context).size.width/3,
                              child: Text(
                                'Order Placed Successfully!',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30,
                                  color: Colors.white,
                                  letterSpacing: 1.2,
                                  height: 1.4,
                                ),

                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 25,left: 15),
                              child: Icon(
                                Icons.coffee_sharp,
                                size: 70,
                                color: Colors.brown[900],
                              ),
                            ),
                          ],
                        )

                      ],
                    )
                )
              ),

              Positioned(
                top: (5*MediaQuery.of(context).size.height/24)-20,
                left: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width-20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.brown[900],
                          blurRadius: 5,
                          spreadRadius: 2
                      )
                    ],
                    color: Colors.white,

                  ),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text(
                          'View Order Details',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.brown[500],
                            letterSpacing: 1.2,
                            height: 1.4,
                          ),

                        ),
                        SizedBox(height: 20),
                        RaisedButton(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 35),
                              child: Text(
                                'REVIEW',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            color: Colors.brown[900],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                            onPressed: (){

                            }

                        )
                      ],
                    )
                  ),
                )
              ),
              Positioned(
                  top: (5*MediaQuery.of(context).size.height/24)+160,
                  left: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width-20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.brown[900],
                            blurRadius: 5,
                            spreadRadius: 2
                        )
                      ],
                      color: Colors.white,

                    ),
                    child: Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Text(
                              'Track Package',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.brown[500],
                                letterSpacing: 1.2,
                                height: 1.4,
                              ),

                            ),
                            SizedBox(height: 20),
                            RaisedButton(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 35),
                                  child: Text(
                                    'TRACK',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                color: Colors.brown[900],
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                                onPressed: (){

                                }

                            )
                          ],
                        )
                    ),
                  )
              ),
              Positioned(
                  top: (5*MediaQuery.of(context).size.height/24)+340,
                  left: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width-20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.brown[900],
                            blurRadius: 5,
                            spreadRadius: 2
                        )
                      ],
                      color: Colors.white,

                    ),
                    child: Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Text(
                              'Back To Menu',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.brown[500],
                                letterSpacing: 1.2,
                                height: 1.4,
                              ),

                            ),
                            SizedBox(height: 20),
                            RaisedButton(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 35),
                                  child: Text(
                                    'MENU',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                color: Colors.brown[900],
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                                }

                            )
                          ],
                        )
                    ),
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}
