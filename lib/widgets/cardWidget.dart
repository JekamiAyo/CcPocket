import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final AlignmentGeometry gradientBegin;
  final AlignmentGeometry gradientEnd;
  final List<Color> colors;
  final String text;
  final String amountInCurrency;
  final String dollars;

  CardWidget(
      {required this.gradientBegin,
        required this.gradientEnd,
        required this.colors,
        required this.text,
        required this.amountInCurrency,
        required this.dollars
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
      child: Container(
        width: 375.0,
        height: 250.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: gradientBegin,
            end: gradientEnd,
            colors: colors,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 30.0),
              child: Text(
                text,
                style: TextStyle(color: Colors.white,fontSize: 18.0),
              ),
            ),
            SizedBox(height: 60.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                amountInCurrency,
                style: TextStyle(color: Colors.white,fontSize: 32.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(dollars,style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}