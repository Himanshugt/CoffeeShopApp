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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
      ),
    );
  }
}
