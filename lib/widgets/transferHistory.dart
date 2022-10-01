import 'package:flutter/material.dart';
import 'RoundedButton.dart';

class TransferHistoryWidget extends StatelessWidget {
  final IconData iconData;
  final String text;
  final String date;
  final String amountInCurrency;
  final String dollars;
  final Color color;
  TransferHistoryWidget(
      {required this.iconData,
        required this.text,
        required this.date,
        required this.amountInCurrency,
        required this.dollars,
        required this.color,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: EdgeInsets.only(right: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                RoundedButton(
                  IconData: iconData,
                  color: Colors.white,
                ),
                SizedBox(width: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      text,
                      style: TextStyle(color: Colors.white,fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      date,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  amountInCurrency,
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: color),
                ),
                SizedBox(height: 5.0),
                Text(
                  dollars,
                  style: TextStyle(color: color),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}