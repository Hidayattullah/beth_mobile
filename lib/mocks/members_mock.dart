import 'package:beth_mobile/core/api/types.dart';

List<Member> initialMembers = [
  Member(
    id: "1",
    name: "Tubagus Rifan",
    email: "tubagus@example.com",
    avatarUrl: "",
    joinedDate: "2023-01-15",
    isActive: true,
    phoneNumber: "081234567890",
    isVerified: true,
    address: "Jl. Jenderal Sudirman No. 1, Jakarta",
    dateOfBirth: "1990-01-01",
    gender: Gender.lakiLaki,
    permissions: {
      "members": ["create", "read", "edit", "delete"],
      "checkin": [],
      "prayers": [],
      "questions": [],
      "tickets": ["read"],
    },
    rfid: Rfid(id: '123456789', type: 'Card'),
  ),
  Member(
    id: "2",
    name: "Jane Doe",
    email: "jane@example.com",
    avatarUrl: "",
    joinedDate: "2023-02-20",
    isActive: false,
    phoneNumber: "081234567891",
    isVerified: false,
    address: "Jl. Gatot Subroto No. 2, Bandung",
    dateOfBirth: "1992-05-20",
    gender: Gender.perempuan,
    permissions: {
      "members": ["read"],
      "checkin": [],
      "prayers": [],
      "questions": ["read"],
      "tickets": [],
    },
    rfid: Rfid(id: null, type: null),
  ),
  // Add other mock members here
];
