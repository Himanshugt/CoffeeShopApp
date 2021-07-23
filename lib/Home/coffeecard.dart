import 'package:coffeeshopapp/Screens/OrderNow/orderNow.dart';
import 'package:flutter/material.dart';
import '../carddetails.dart';

class CoffeeCard extends StatefulWidget {
  CardDetails details=new CardDetails('', '', '', 0.00);
  CoffeeCard(CardDetails detail)
  {
    this.details=detail;
  }

  @override
  _CoffeeCardState createState() => _CoffeeCardState();
}

class _CoffeeCardState extends State<CoffeeCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Stack(
        children: [
          Container(
            height: 365,
            width: 210,
            child: Column(
              children: [
                SizedBox(height: 70),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  height: 230,
                  width: 220,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
                    color: Colors.brown[200],
                    child: Padding(
                        padding: EdgeInsets.only(left: 15,right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 50),
                            Text(
                              widget.details.nameOfShop,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  letterSpacing: 1
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              widget.details.coffee,
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  letterSpacing: 1
                              ),
                            ),
                            SizedBox(height: 9),
                            Container(
                              height: 55,
                              child: Text(
                                widget.details.coffeeDescription,
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                    letterSpacing: 1
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '\$${widget.details.price}',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.brown[900],
                                        letterSpacing: 1
                                    ),
                                  ),
                                ),
                                IconButton(
                                    onPressed: (){
                                      widget.details.isFavorite=!widget.details.isFavorite;
                                    },
                                    icon:Icon(
                                      Icons.favorite_border,
                                      size: 30,
                                    )
                                ),
                              ],
                            )
                          ],
                        )
                    ),
                  ),
                ),
                Container(
                  width: 210,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    color: Colors.brown[900],
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>orderNow()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:10),
                      child: Text(
                        'Order Now',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 15,
              left:40,
              child: Container(
                  height: 95,
                  width: 125,
                  child:CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7BPKzUAxMUoZoSZm7Wdw-vlYvDSUSnJyEUKOz8qO965M4TBtRGhjlAStVjVsM5j_xCDU&usqp=CAU')
                  )
                //Image(
                //image: NetworkImage('),
                //),
              )
          )
        ],
      ),
    );;
  }
}
