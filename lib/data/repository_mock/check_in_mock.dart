import 'dart:convert';
import 'package:beth_mobile/core/api/types.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../mocks/check_in_mock.dart';

const String LOCAL_STORAGE_KEY = 'checkin_events_mock';

Future<List<CheckInEvent>> getCheckInEvents() async {
  await Future.delayed(Duration(milliseconds: 300));
  print("Fetching mock check-in events...");

  final prefs = await SharedPreferences.getInstance();
  final storedData = prefs.getString(LOCAL_STORAGE_KEY);

  if (storedData != null) {
    final List<dynamic> decodedData = jsonDecode(storedData);
    return decodedData.map((e) => CheckInEvent.fromJson(e)).toList();
  }

  // If no stored data, use mock data and save
  final initialData = mockEvents.map((e) => e.toJson()).toList();
  prefs.setString(LOCAL_STORAGE_KEY, jsonEncode(initialData));
  return mockEvents;
}

Future<void> saveCheckInEvents(List<CheckInEvent> events) async {
  final prefs = await SharedPreferences.getInstance();
  final eventsJson = events.map((e) => e.toJson()).toList();
  prefs.setString(LOCAL_STORAGE_KEY, jsonEncode(eventsJson));
}
