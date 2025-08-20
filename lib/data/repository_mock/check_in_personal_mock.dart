import 'dart:async';
import 'package:beth_mobile/core/api/types.dart';
import 'check_in_mock.dart';

Future<List<PersonalCheckInRecord>> getPersonalCheckInHistory(
  String userName,
) async {
  await Future.delayed(Duration(milliseconds: 300));

  print("Fetching mock personal check-in history for $userName...");

  final allEvents = mockEvents;
  final personalHistory = <PersonalCheckInRecord>[];

  for (var event in allEvents) {
    if (event.attendees != null) {
      for (var attendee in event.attendees!) {
        if (attendee.name == userName) {
          personalHistory.add(
            PersonalCheckInRecord(
              id: "${event.id}-${attendee.id}",
              service: event.eventName,
              checkinDate: "${event.eventDate}T${attendee.checkinTime}:00",
              checkinMethod: attendee.checkinMethod,
            ),
          );
        }
      }
    }
  }

  personalHistory.sort(
    (a, b) =>
        DateTime.parse(b.checkinDate).compareTo(DateTime.parse(a.checkinDate)),
  );

  return personalHistory;
}
