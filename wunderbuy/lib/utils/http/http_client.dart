import 'dart:convert';
import 'package:http/http.dart' as http;

class CHttpHelper {
  static const String _baseURL = "api_website_URL";

  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to fetch data: ${response.statusCode}');
    }
  }

  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseURL/$endpoint'));
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async{
    final response = await http.post(
      Uri.parse('$_baseURL/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }
}
