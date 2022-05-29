import 'package:binance_clone/screens/home_sub_screens/hot_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math' as math;
import 'losers_screen.dart';
import 'gainers_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      child: ListView(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: Colors.grey,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Log In / Register',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              Icon(CupertinoIcons.search, color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              Icon(Icons.qr_code_scanner, color: Colors.grey),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(CupertinoIcons.bell, color: Colors.grey),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.more_horiz, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width / 2.3,
                  //child: Image.asset('images/image1.png'),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('images/image1.png'),
                        fit: BoxFit.fill),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.campaign, color: Colors.grey),
                    Text('Learn to trade P2P on binance'),
                    Icon(Icons.list, color: Colors.grey),
                  ],
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 100),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    textBaseline: TextBaseline.ideographic,
                    children: const [
                      IconTextWidget(
                          text: 'Deposit',
                          icon: CupertinoIcons.square_arrow_down_fill),
                      IconTextWidget(text: 'Referral', icon: Icons.group_add),
                      IconTextWidget(
                          text: 'Strategy\nTrading', icon: Icons.query_stats),
                      IconTextWidget(text: 'Earn', icon: Icons.savings),
                      IconTextWidget(text: 'More', icon: Icons.interests),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: const [
                      DepositP2pCard(
                          title: 'Deposit NGN',
                          subTitle: 'Bank Transfer',
                          icon: Icons.credit_card),
                      SizedBox(
                        width: 5,
                      ),
                      DepositP2pCard(
                          title: 'P2P Trading',
                          subTitle: 'Bank Transfer, PayPal, Revolut and more',
                          icon: Icons.interests)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      PairPriceChartWidget(
                          pair: 'BNB', percentage: '-1.71', price: '397.3'),
                      PairPriceChartWidget(
                          pair: 'BTC', percentage: '-1.98', price: '38,959.60'),
                      PairPriceChartWidget(
                          pair: 'ETH', percentage: '-2.23', price: '2,862.94'),
                    ],
                  ),
                  Divider(
                    height: 0,
                  ),
                  TextButton(
                    child: ListTile(
                      leading: Icon(Icons.directions_run),
                      title: Text('Binance Earn'),
                      subtitle: Text(
                        'Earning crypto made simple',
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        radius: 15,
                        child: Icon(Icons.arrow_forward,
                            color: Colors.black, size: 20),
                      ),
                    ),
                    onPressed: () {
                      //do something
                    },
                  ),
                  Divider(
                    height: 0,
                  ),
                  HomeTabBar(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({Key? key, required this.text, required this.icon})
      : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.grey,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        )
      ],
    );
  }
}

class DepositP2pCard extends StatelessWidget {
  const DepositP2pCard(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.icon})
      : super(key: key);

  final String title;
  final String subTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: (MediaQuery.of(context).size.width) / 3.1,
        color: Colors.grey.shade50,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Text(
              subTitle,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const SweepGradient(
                        center: FractionalOffset.center,
                        startAngle: 0.0,
                        endAngle: math.pi * 4,
                        colors: <Color>[
                          Colors.green,
                          Colors.yellow,
                          Colors.green,
                          Colors.yellow,
                          Colors.green
                        ],
                      ).createShader(bounds);
                    },
                    child: Icon(
                      icon,
                      size: 45,
                      color: Colors.grey,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    radius: 15,
                    child: Icon(Icons.arrow_forward,
                        color: Colors.black, size: 20),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PairPriceChartWidget extends StatelessWidget {
  const PairPriceChartWidget(
      {required this.pair, required this.percentage, required this.price});

  final String pair;
  final String percentage;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 10, right: 10, bottom: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                '$pair/BUSD ',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '$percentage%',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            price,
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 5,
            height: MediaQuery.of(context).size.width / 13.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.blueGrey.shade900,
            ),
          ),
        ],
      ),
    );
  }
}

class HomeTabBar extends StatefulWidget {
  const HomeTabBar({Key? key}) : super(key: key);

  @override
  State<HomeTabBar> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {
  String title1 = 'Pair';

  String title2 = 'All Markets';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      animationDuration: Duration(milliseconds: 700),
      length: 4,
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: TabBar(
              padding: EdgeInsets.only(
                  left: 5,
                  right: MediaQuery.of(context).size.width / 3,
                  top: 20),
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(3),
              ),
              unselectedLabelColor: Colors.grey,
              labelPadding: EdgeInsets.symmetric(horizontal: 0),
              tabs: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Tab(text: 'Hot'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Tab(text: 'Gainers'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Tab(text: 'Losers'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Tab(text: '24h Vol'),
                )
              ],
              labelColor: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  child: Text(
                    title2,
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Text(
                    'Last Price',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Text(
                    '24h chg%',
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 620,
            child: TabBarView(
              children: [
                HotScreen(),
                GainersScreen(),
                LosersScreen(),
                Center(child: Text('coming soon'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
