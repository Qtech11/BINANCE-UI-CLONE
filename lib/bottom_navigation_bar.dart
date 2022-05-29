import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'screens/home_sub_screens/home_screen.dart';
import 'screens/market_sub_screens/market_screen.dart';
import 'screens/trade_sub_screens/trade_screen.dart';
import 'screens/future_sub_screens/future_screen.dart';
import 'screens/wallet_sub_screens/wallet_screen.dart';

class BaseNavigationBar extends StatefulWidget {
  const BaseNavigationBar({Key? key}) : super(key: key);

  @override
  State<BaseNavigationBar> createState() => _BaseNavigationBarState();
}

class _BaseNavigationBarState extends State<BaseNavigationBar> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MarketScreen(),
    TradeScreen(),
    FutureScreen(),
    WalletScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer),
            label: 'Markets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_exchange),
            label: 'Trades',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insights),
            label: 'Futures',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallets',
          ),
        ],
        selectedFontSize: 10,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(color: Colors.green),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
      ),
    );
  }
}
