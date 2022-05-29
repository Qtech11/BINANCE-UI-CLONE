import 'package:flutter/material.dart';
import 'dart:math';
import 'package:binance_clone/coin_library.dart';

class HotScreen extends StatelessWidget {
  Color randomColors() {
    Color colors;
    int randomNumber = Random().nextInt(3) + 1;
    if (randomNumber == 1) {
      colors = Colors.green;
    } else if (randomNumber == 2) {
      colors = Colors.red;
    } else {
      colors = Colors.black;
    }
    return colors;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (CoinData coinList in CoinLibrary().coinList)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        coinList.coin,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '/${coinList.pair}',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 100,
                  child: Text(
                    coinList.lastPrice,
                    style: TextStyle(color: randomColors(), fontSize: 16),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: coinList.change24hr > 0
                        ? Colors.green.shade600
                        : Colors.red.shade500,
                  ),
                  height: 35,
                  width: 75,
                  child: Center(
                    child: Text(
                      coinList.change24hr > 0
                          ? '+${coinList.change24hr}%'
                          : '${coinList.change24hr}%',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
