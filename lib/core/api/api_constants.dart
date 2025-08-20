class ApiConstants {
  static const String apiBaseUrl =
      'https://yourapiurl.com/api'; // Ganti dengan URL API Anda
  static const String loginEndpoint = '$apiBaseUrl/auth/login';
  static const String getMembersEndpoint = '$apiBaseUrl/members';
  static const String getMemberByIdEndpoint = '$apiBaseUrl/members/{id}';
  static const String getCheckInEventsEndpoint = '$apiBaseUrl/check-in/events';
  // Endpoint lainnya sesuai dengan yang sudah dijelaskan di Next.js
}
