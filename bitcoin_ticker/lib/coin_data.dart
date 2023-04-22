//2. Import the required packages.
import 'dart:convert';
import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  //3: Update getCoinData to take the selectedCurrency as an input.
  Future getBitcoinData(String selectedCurrency) async {
    String currency = selectedCurrency.toLowerCase();
    String requestURL =
        'https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=$currency';
    http.Response response = await http.get(Uri.parse(requestURL));
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      int lastPriceBitcoin = decodedData['bitcoin']['$currency'];
      return lastPriceBitcoin.toStringAsFixed(0);
    } else {
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }

  Future getEthereumData(String selectedCurrency) async {
    String currency = selectedCurrency.toLowerCase();
    String requestURL =
        'https://api.coingecko.com/api/v3/simple/price?ids=ethereum&vs_currencies=$currency';
    http.Response response = await http.get(Uri.parse(requestURL));
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      double lastPriceEthereum = decodedData['ethereum']['$currency'];
      return lastPriceEthereum.toStringAsFixed(0);
    } else {
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }

  Future getLightcoinData(String selectedCurrency) async {
    String currency = selectedCurrency.toLowerCase();
    String requestURL =
        'https://api.coingecko.com/api/v3/simple/price?ids=lightcoin&vs_currencies=$currency';
    http.Response response = await http.get(Uri.parse(requestURL));
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      double lastPriceLightcoin = decodedData['lightcoin']['$currency'];
      return lastPriceLightcoin.toStringAsFixed(8);
    } else {
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }
}
