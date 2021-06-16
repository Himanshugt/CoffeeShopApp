import 'package:flutter/material.dart';
import 'carddetails.dart';

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
            height: 400,
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
                    color: Colors.orange[300],
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
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                        letterSpacing: 1
                                    ),
                                  ),
                                ),
                                IconButton(
                                    onPressed: (){
                                      widget.details.isFavorite=!widget.details.isFavorite;
                                    },
                                    icon:Icon(
                                        Icons.favorite_border)),
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
                    color: Colors.black54,
                    onPressed: (){
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
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_-uLtBdNEVg70Dm23eUe_uuyAqbCGhpyS2g&usqp=CAU')
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
