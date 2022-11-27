import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {

  NetworkHelper(this.url);

  final String url;

  void getData() async {
    http.Response response = await http.get(
        Uri.parse(url));
    print(response.body);
    //controlla response.statusCode per capire se la richiesta all'api da buon fine in quel caso uscirà 200 altrsì altri valori e saranno errori
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}