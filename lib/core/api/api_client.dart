import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ApiClient {
  final http.Client client;
  final FlutterSecureStorage secureStorage;

  ApiClient({http.Client? client, required this.secureStorage})
    : client = client ?? http.Client();

  // Mengambil token otentikasi (JWT) dari secure storage
  Future<String?> getAuthToken() async {
    return await secureStorage.read(key: 'authToken');
  }

  // Fungsi fetch kustom untuk API calls
  Future<T> customFetch<T>(
    String url, {
    Map<String, String>? headers,
    required String method,
    dynamic body,
  }) async {
    String? token = await getAuthToken();
    Map<String, String> defaultHeaders = {'Content-Type': 'application/json'};

    if (token != null) {
      defaultHeaders['Authorization'] = 'Bearer $token';
    }

    try {
      final response = await client.send(
        http.Request(method, Uri.parse(url))
          ..headers.addAll(defaultHeaders)
          ..body = json.encode(body),
      );

      final responseBody = await response.stream.bytesToString();
      if (response.statusCode == 200 || response.statusCode == 201) {
        return json.decode(responseBody) as T;
      } else {
        throw Exception(
          'API request failed with status code: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception('API request error: $e');
    }
  }
}
