import 'package:beth_mobile/core/api/types.dart';

List<CheckInEvent> mockEvents = [
  CheckInEvent(
    id: "evt-001",
    eventName: "Ibadah Raya 1",
    eventDate: "2024-07-28",
    isActive: true,
    activationType: 'manual',
    attendees: [
      Attendee(
        id: "1",
        name: "Tubagus Rifan",
        checkinTime: "09:05",
        checkinMethod: "Barcode",
      ),
      Attendee(
        id: "4",
        name: "Sarah Connor",
        checkinTime: "09:02",
        checkinMethod: "RFID",
      ),
      Attendee(
        id: "5",
        name: "John Smith",
        checkinTime: "09:03",
        checkinMethod: "Barcode",
      ),
      Attendee(
        id: "7",
        name: "Ellen Ripley",
        checkinTime: "09:04",
        checkinMethod: "RFID",
      ),
    ],
  ),
  CheckInEvent(
    id: "evt-002",
    eventName: "Ibadah Raya 2",
    eventDate: "2024-07-28",
    isActive: true,
    activationType: 'manual',
    attendees: [
      Attendee(
        id: "2",
        name: "Jane Doe",
        checkinTime: "17:02",
        checkinMethod: "RFID",
      ),
    ],
  ),
  // Add other mock events here
];
