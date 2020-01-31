import 'package:http/http.dart' as http;
import 'dart:convert';
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
  String url;
  double _price;
  CoinData(this.url);
  Future<double> getData()async{
    http.Response response=await http.get(url);
    var data=jsonDecode(response.body);
    if(response.statusCode==200){
      _price=data['last'];
    }else
      _price=0;
    return _price;
  }
}
