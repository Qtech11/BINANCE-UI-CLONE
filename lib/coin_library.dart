class CoinData {
  CoinData({
    required this.coin,
    required this.pair,
    required this.lastPrice,
    required this.change24hr,
  });

  String pair;
  String lastPrice;
  double change24hr;
  String coin;
}

class CoinLibrary {
  List<CoinData> coinList = [
    CoinData(coin: 'BNB', pair: 'BUSD', lastPrice: '386.8', change24hr: 0.52),
    CoinData(
        coin: 'BTC', pair: 'BUSD', lastPrice: '38,447.75', change24hr: 1.61),
    CoinData(
        coin: 'ETH', pair: 'BUSD', lastPrice: '2,811.69', change24hr: -1.13),
    CoinData(coin: 'BNB', pair: 'BUSD', lastPrice: '386.8', change24hr: 0.52),
    CoinData(
        coin: 'BTC', pair: 'BUSD', lastPrice: '38,447.75', change24hr: 1.61),
    CoinData(
        coin: 'ETH', pair: 'BUSD', lastPrice: '2,811.69', change24hr: -1.13),
    CoinData(coin: 'BNB', pair: 'BUSD', lastPrice: '386.8', change24hr: 0.52),
    CoinData(
        coin: 'BTC', pair: 'BUSD', lastPrice: '38,447.75', change24hr: 1.61),
    CoinData(
        coin: 'ETH', pair: 'BUSD', lastPrice: '2,811.69', change24hr: -1.13),
    CoinData(coin: 'BNB', pair: 'BUSD', lastPrice: '386.8', change24hr: 0.52),
  ];
}
