import 'package:http/http.dart' as http;
import 'dart:convert';

class HotelApi {
  Future<List<dynamic>> getHotels() async {
    var url = 'https://www.hotelsgo.co/test/hotels';
    final response = await http.get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      // If the API call was successful, parse the JSON response
      return json.decode(response.body);
    } else {
      // If the API call was unsuccessful, throw an error
      throw Exception('Failed to load data');
    }
  }
}
