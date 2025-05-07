import 'dart:convert';
import 'package:http/http.dart' as http;

class LocationService {
  // Fetch list of countries with name and ISO code
  Future<List<Map<String, String>>> getCountries() async {
    final response = await http.get(Uri.parse('https://restcountries.com/v3.1/all'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map<Map<String, String>>((country) {
        return {
          'name': country['name']['common'] as String,
          'code': country['cca2'] as String,
        };
      }).toList();
    } else {
      throw Exception('Failed to load countries');
    }
  }

  // Fetch list of cities for a given country code
  Future<List<String>> getCities(String countryCode) async {
    final response = await http.get(Uri.parse(
        'https://geodb-free-service.wirefreethought.com/v1/geo/cities?countryIds=$countryCode&limit=10&sort=-population'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body)['data'];
      return data.map<String>((city) => city['name'] as String).toList();
    } else {
      throw Exception('Failed to load cities');
    }
  }
}
