import 'package:coffeeshopapp/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:coffeeshopapp/carddetails.dart';
import 'package:coffeeshopapp/Home/coffeecard.dart';
import 'package:coffeeshopapp/Screens/Favorite/Favorite.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static List<CardDetails> cardList=[
    CardDetails('CoffeeShop\'s','Caffè Misto','Our dark rich espresso balanced with steamed milk and a light layer of foam.', 4.99),
    CardDetails('Steamy Beans \'s','Cafè Au Lait','French morning coffee. Made by mixing dark roasted filter coffee and warm milk.', 6.99),
    CardDetails('Brew Culture \'s','Iced Mocha','Cold Caffè mocha. Prepared like iced latte, but garnished and flavoured.Served in a latte glass.', 5.99),
    CardDetails('Grinded Smoke \'s','Caffè Latte','A tall, mild milk coffee (about 150-300 ml). An espresso with steamed milk and added flavoured syrup.', 5.99)
  ];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AuthService _auth=AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.00,
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.orange[400],
            ),
            onPressed: () async {
              return await _auth.signOut();
            },
          )
        ],
      ),

      body: ListView(
        padding: EdgeInsets.only(left: 20,top: 95,right: 20),
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Welcome, Joey',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage('https://i.ytimg.com/vi/wR6xCtxM308/maxresdefault.jpg')
                  )
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: Text(
                  "Let's select the best taste for your next coffee break!",
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
              SizedBox(width:85)
            ],
          ),
          SizedBox(height: 50),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Taste of the Week',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w800
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: HomePage.cardList.map((details) => CoffeeCard(details)).toList(),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
                Icons.home_outlined
            ),
            label: 'Home',
            backgroundColor: Colors.orange[600],
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.coffee
            ),
            label: 'Orders',
            backgroundColor: Colors.purpleAccent,
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>favorite()));
              },
              icon: Icon(
                Icons.favorite_border,
              ),
            ),
            label: 'Favorites',
            backgroundColor: Colors.pinkAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.person
            ),
            label: 'Profile',
            backgroundColor: Colors.cyan,
          ),
        ],
      ),
    );
  }
}

