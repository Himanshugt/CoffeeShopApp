import 'package:coffeeshopapp/Screens/OrderNow/orderPlaced.dart';
import 'package:flutter/material.dart';

class orderNow extends StatefulWidget {
  const orderNow({Key? key}) : super(key: key);

  @override
  _orderNowState createState() => _orderNowState();
}

class _orderNowState extends State<orderNow> {
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
                  color: Colors.grey,
                ),

                Positioned(
                    bottom: MediaQuery.of(context).size.height/2,
                    child: Container(
                      height: MediaQuery.of(context).size.height/2,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.pink[200],
                      child: Container(
                        padding: EdgeInsets.only(left: 25,right: 25,top: 20),
                        child: ListView(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/2-45,
                                  child: Text(
                                    'Caramel Macchiato',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 30,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24),
                                      child: IconButton(
                                          onPressed: (){},
                                          icon:Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 40,
                                          )
                                      ),
                                    ),

                                    Positioned(
                                      top: 10,
                                      right: 8,
                                      left: 9,
                                      bottom: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 24),
                                        child: IconButton(
                                            onPressed: (){},
                                            icon:Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 20,
                                            )
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/2,
                                  height: 130,
                                  child: Text(
                                    'Freshly steamed milk with vanilla flavored syrup is marked with expresso and topped with caramel drizzle for an oh-so-sweet finish',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.white,
                                      height: 1.4,

                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.yellowAccent,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellowAccent,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellowAccent,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellowAccent,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellowAccent,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.star_half,
                                  color: Colors.yellowAccent,
                                  size: 20,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                ),

                Positioned(
                    top: MediaQuery.of(context).size.height/2-100,
                    child: Container(
                      height: MediaQuery.of(context).size.height/2+40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        color: Colors.white,
                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 25,right: 25,top: 25),
                        child: ListView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: Text(
                                'Preparation Time',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                '5 min',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.grey[700],
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 14),
                              child: Text(
                                'Ingredients',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  IngIcon(
                                      'Water',
                                      Icon(
                                        Icons.water,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                      Colors.indigoAccent
                                  ),
                                  IngIcon(
                                      'Vanilla',
                                      Icon(
                                        Icons.wb_cloudy_rounded,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                      Colors.amber
                                  ),
                                  IngIcon(
                                      'Chocolate',
                                      Icon(
                                        Icons.apps,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                      Colors.brown
                                  ),
                                  IngIcon(
                                      'Ice Cubes',
                                      Icon(
                                        Icons.ac_unit_outlined,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                      Colors.lightBlueAccent
                                  ),
                                  IngIcon(
                                      'Nut Syrup',
                                      Icon(
                                        Icons.donut_large,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                      Colors.lightGreen
                                  ),
                                  IngIcon(
                                      'Sugar',
                                      Icon(
                                        Icons.check_box_outline_blank_rounded,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                      Colors.pinkAccent
                                  ),

                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12,bottom: 12),
                              child: Text(
                                'Nutrition Information',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0,right: 16),
                                  child: Text(
                                    'Calories',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    '250',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0,right: 16),
                                  child: Text(
                                    'Proteins',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    '10g',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0,right: 16),
                                  child: Text(
                                    'Caffeine',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    '150mg',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8,bottom: 8),
                              child: RaisedButton(
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OrderPlaced()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    'Make Order',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                color: Colors.black54,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                ),




              ],
            )
          ],
        )


    );
  }
}


IngIcon(String name,Icon iconn,Color bgColor){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8),
    child: Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: bgColor,
          ),
          child: Center(
            child: iconn,
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: 60,
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
