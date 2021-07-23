import 'package:flutter/material.dart';
import '../../Home/homepage.dart';

class favorite extends StatelessWidget {
  const favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'Favorite'
          ),
          centerTitle: true,
          backgroundColor: Colors.brown[200],
        ),
        body: ListView(
          children: HomePage.cardList.map((details){
            if(details.isFavorite){
              return Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
                color: Colors.orange[300],
                child: Padding(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50),
                        Text(
                          details.nameOfShop,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              letterSpacing: 1
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          details.coffee,
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
                            details.coffeeDescription,
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
                                '\$${details.price}',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    letterSpacing: 1
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                ),
              );
            }
            else{
              return Container();
            }
          }).toList(),
        )
    );
  }
}
