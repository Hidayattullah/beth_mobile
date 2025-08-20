import 'package:beth_mobile/core/api/types.dart';

List<PrayerRequest> mockPrayers = [
  PrayerRequest(
    id: "p1",
    userName: "Maria S.",
    requestText:
        "Mohon doakan untuk kesembuhan ibu saya yang sedang sakit keras.",
    submittedDate: DateTime.now().subtract(Duration(days: 1)).toIso8601String(),
    isAnonymous: false,
    isResponded: true,
    lastResponseBy: "Tubagus Rifan",
    responseText:
        "Kami berdoa untuk ibu Maria, agar Tuhan Yesus memberikan kekuatan.",
    isArchived: false,
  ),
  PrayerRequest(
    id: "p2",
    userName: "Anonim",
    requestText:
        "Pergumulan dalam pekerjaan. Saya merasa tidak memiliki harapan.",
    submittedDate: DateTime.now().subtract(Duration(days: 1)).toIso8601String(),
    isAnonymous: true,
    submittedBy: "Tubagus Rifan",
    isResponded: true,
    lastResponseBy: "Tubagus Rifan",
    responseText: "Tuhan adalah sumber kekuatan dan pengharapan.",
    isArchived: false,
  ),
  // Add other mock prayers here
];
