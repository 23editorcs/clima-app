import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;
  String _data;

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      _data = response.body;
      return jsonDecode(_data);
    } else {
      print(response.statusCode);
    }
  }
}
