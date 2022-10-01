import 'package:flutter/material.dart';
import 'package:wallet_app_ui/widgets/RoundedButton.dart';
import 'package:wallet_app_ui/widgets/cardWidget.dart';
import 'package:wallet_app_ui/widgets/transferHistory.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(32, 20, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BALANCE',
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$3,020.09",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),

            //card
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardWidget(
                      gradientBegin: Alignment.centerRight,
                      gradientEnd: Alignment.centerLeft,
                      colors: [Color(0xFFf3a8b0), Color(0xFFc088d6)],
                      text: 'Litecoin',
                      amountInCurrency: '14.3910 LTC',
                      dollars: '\$915.39'),
                  CardWidget(
                      gradientBegin: Alignment.centerRight,
                      gradientEnd: Alignment.centerLeft,
                      colors: [Colors.green, Colors.blue],
                      text: 'Ethereum',
                      amountInCurrency: '9.3910 ETH',
                      dollars: '\$615.39'),
                  CardWidget(
                      gradientBegin: Alignment.centerRight,
                      gradientEnd: Alignment.centerLeft,
                      colors: [Colors.orange, Colors.red],
                      text: 'Bitcoin',
                      amountInCurrency: '14.3910 BTC',
                      dollars: '\$1005.39')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //icons
            Padding(
              padding: const EdgeInsets.only(right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundedButton(
                    IconData: Icons.file_download,
                    color: Colors.green,
                  ),
                  RoundedButton(
                    IconData: Icons.upload,
                    color: Colors.red,
                  ),
                  RoundedButton(
                    IconData: Icons.credit_card,
                    color: Colors.white,
                  ),
                  RoundedButton(
                    IconData: Icons.history,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 62,
            ),

            //history
            Text(
              'TRANSFER HISTORY',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
            ),
            SizedBox(height: 10,),
            Container(
              height: 230,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  TransferHistoryWidget(
                      iconData: Icons.download,
                      text: 'Received',
                      date: '15 Aug',
                      amountInCurrency: '0.00002 LTC',
                      dollars: '\$1.49',
                      color: Colors.green),
                  TransferHistoryWidget(
                      iconData: Icons.download,
                      text: 'Received',
                      date: '14 Aug',
                      amountInCurrency: '0.00002 LTC',
                      dollars: '\$1.49',
                      color: Colors.green),
                  TransferHistoryWidget(
                      iconData: Icons.upload,
                      text: 'Sent',
                      date: '13 Aug',
                      amountInCurrency: '-0.00004 LTC',
                      dollars: '\$-2.98',
                      color: Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
