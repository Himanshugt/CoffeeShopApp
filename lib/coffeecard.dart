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
    return Container();
  }
}
