import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:binance_clone/constants.dart';
import 'favourites_screen.dart';
import 'spot_screen.dart';
import 'zones_screen.dart';
import 'futures_screen.dart';

class MarketScreen extends StatefulWidget {
  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    //  _tabController = TabController(vsync: this, )
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15.0, top: 25),
            child: Row(
              children: const [
                Expanded(
                  child: SizedBox(
                      height: 35,
                      child: TextField(decoration: kMarketsInputDecoration)),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.check_box_outline_blank_sharp,
                  color: Colors.grey,
                  size: 30,
                ),
              ],
            ),
          ),
          DefaultTabController(
            length: 4,
            child: Column(
              children: [
                TabBar(
                  indicatorColor: Colors.teal,
                  //indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  labelColor: Colors.grey,
                  tabs: [
                    Tab(text: 'Favorites'),
                    Tab(text: 'Spot'),
                    Tab(text: 'Futures'),
                    Tab(text: 'Zones'),
                  ],
                ),
                SizedBox(
                  height: 800,
                  child: TabBarView(children: [
                    FavouritesScreen(),
                    SpotScreen(),
                    FuturesScreen(),
                    ZonesScreen(),
                  ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
