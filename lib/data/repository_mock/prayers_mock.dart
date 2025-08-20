import 'dart:async';
import 'package:beth_mobile/core/api/types.dart';

import '../../mocks/prayers_mock.dart';

final List<PrayerRequest> prayers = [...mockPrayers];

Future<List<PrayerRequest>> getPrayerRequests() async {
  await Future.delayed(Duration(milliseconds: 300));
  print("Fetching mock prayer requests...");

  return prayers;
}

Future<PrayerRequest> addPrayerRequest(PrayerRequest data) async {
  await Future.delayed(Duration(milliseconds: 300));
  print("Adding mock prayer request...");

  final newPrayer = PrayerRequest(
    id: "p-${DateTime.now().millisecondsSinceEpoch}",
    submittedDate: DateTime.now().toIso8601String(),
    isResponded: false,
    isArchived: false,
    ...data, userName: '', requestText: '', isAnonymous: null,
  );

  prayers.insert(0, newPrayer);
  return newPrayer;
}

Future<PrayerRequest> respondToPrayerRequest(String prayerId, String responseText, String responderName) async {
  await Future.delayed(Duration(milliseconds: 300));
  print("Responding to mock prayer request $prayerId...");

  final prayer = prayers.firstWhere((p) => p.id == prayerId);

  if (prayer != null) {
    prayer.responseText = responseText;
    prayer.lastResponseBy = responderName;
    prayer.isResponded = true;
    return prayer;
  }

  throw Exception("Prayer request not found");
}
