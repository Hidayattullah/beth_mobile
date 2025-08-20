import 'api_client.dart';
import 'api_constants.dart';

class ApiService {
  final ApiClient apiClient;

  ApiService({required this.apiClient});

  Future<Map<String, dynamic>> login(
    String phoneNumber,
    String password,
  ) async {
    final body = {'phoneNumber': phoneNumber, 'password': password};
    return await apiClient.customFetch<Map<String, dynamic>>(
      ApiConstants.loginEndpoint,
      method: 'POST',
      body: body,
    );
  }

  Future<List<Map<String, dynamic>>> getMembers() async {
    return await apiClient.customFetch<List<Map<String, dynamic>>>(
      ApiConstants.getMembersEndpoint,
      method: 'GET',
      body: null,
    );
  }

  // Tambahkan implementasi untuk endpoint lain sesuai kebutuhan, seperti GET_MEMBER_BY_ID, etc.
}
