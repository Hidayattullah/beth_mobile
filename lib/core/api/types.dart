// Gender tipe
enum Gender { lakiLaki, perempuan }

// Tipe untuk RFID
class Rfid {
  final String? id;
  final String? type;

  Rfid({this.id, this.type});

  factory Rfid.fromJson(Map<String, dynamic> json) {
    return Rfid(id: json['id'], type: json['type']);
  }
}

// Tipe untuk Member
class Member {
  final String id;
  final String name;
  final String email;
  final String avatarUrl;
  final String joinedDate;
  final bool isActive;
  final String phoneNumber;
  final bool isVerified;
  final String address;
  final String dateOfBirth;
  final Gender gender;
  final Map<String, List<String>> permissions;
  final Rfid rfid;

  Member({
    required this.id,
    required this.name,
    required this.email,
    required this.avatarUrl,
    required this.joinedDate,
    required this.isActive,
    required this.phoneNumber,
    required this.isVerified,
    required this.address,
    required this.dateOfBirth,
    required this.gender,
    required this.permissions,
    required this.rfid,
  });

  factory Member.fromJson(Map<String, dynamic> json) {
    return Member(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      avatarUrl: json['avatarUrl'],
      joinedDate: json['joinedDate'],
      isActive: json['isActive'],
      phoneNumber: json['phoneNumber'],
      isVerified: json['isVerified'],
      address: json['address'],
      dateOfBirth: json['dateOfBirth'],
      gender: Gender.values.firstWhere(
        (e) => e.toString() == 'Gender.${json['gender']}',
      ),
      permissions: Map.from(json['permissions']),
      rfid: Rfid.fromJson(json['rfid']),
    );
  }
}

// Tipe untuk Attendee
class Attendee {
  final String id;
  final String name;
  final String checkinTime;
  final String checkinMethod;

  Attendee({
    required this.id,
    required this.name,
    required this.checkinTime,
    required this.checkinMethod,
  });

  factory Attendee.fromJson(Map<String, dynamic> json) {
    return Attendee(
      id: json['id'],
      name: json['name'],
      checkinTime: json['checkinTime'],
      checkinMethod: json['checkinMethod'],
    );
  }
}

// Tipe untuk CheckInEvent
class CheckInEvent {
  final String id;
  final String eventName;
  final String eventDate;
  final bool isActive;
  final String? activationType;
  final List<Attendee> attendees;

  CheckInEvent({
    required this.id,
    required this.eventName,
    required this.eventDate,
    required this.isActive,
    this.activationType,
    required this.attendees,
  });

  factory CheckInEvent.fromJson(Map<String, dynamic> json) {
    var attendeesList = (json['attendees'] as List)
        .map((attendeeJson) => Attendee.fromJson(attendeeJson))
        .toList();

    return CheckInEvent(
      id: json['id'],
      eventName: json['eventName'],
      eventDate: json['eventDate'],
      isActive: json['isActive'],
      activationType: json['activationType'],
      attendees: attendeesList,
    );
  }
}

// Tipe untuk PrayerRequest
class PrayerRequest {
  final String id;
  final String userName;
  final String requestText;
  final String submittedDate;
  final bool isAnonymous;
  final String? submittedBy;
  final bool isResponded;
  final String? lastResponseBy;
  final String? responseText;
  final bool isArchived;
  final String? archivedDate;

  PrayerRequest({
    required this.id,
    required this.userName,
    required this.requestText,
    required this.submittedDate,
    required this.isAnonymous,
    this.submittedBy,
    required this.isResponded,
    this.lastResponseBy,
    this.responseText,
    required this.isArchived,
    this.archivedDate,
  });

  factory PrayerRequest.fromJson(Map<String, dynamic> json) {
    return PrayerRequest(
      id: json['id'],
      userName: json['userName'],
      requestText: json['requestText'],
      submittedDate: json['submittedDate'],
      isAnonymous: json['isAnonymous'],
      submittedBy: json['submittedBy'],
      isResponded: json['isResponded'],
      lastResponseBy: json['lastResponseBy'],
      responseText: json['responseText'],
      isArchived: json['isArchived'],
      archivedDate: json['archivedDate'],
    );
  }
}

// Tipe untuk Question
class Question {
  final String id;
  final String userName;
  final String questionText;
  final String submittedDate;
  final bool isResponded;
  final String? responseBy;
  final String? responseText;
  final bool isArchived;
  final String? archivedDate;
  final String? avatarUrl;

  Question({
    required this.id,
    required this.userName,
    required this.questionText,
    required this.submittedDate,
    required this.isResponded,
    this.responseBy,
    this.responseText,
    required this.isArchived,
    this.archivedDate,
    this.avatarUrl,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      userName: json['userName'],
      questionText: json['questionText'],
      submittedDate: json['submittedDate'],
      isResponded: json['isResponded'],
      responseBy: json['responseBy'],
      responseText: json['responseText'],
      isArchived: json['isArchived'],
      archivedDate: json['archivedDate'],
      avatarUrl: json['avatarUrl'],
    );
  }
}

// Tipe untuk SupportTicket
class SupportTicket {
  final String id;
  final String userName;
  final String phoneNumber;
  final String description;
  final String submittedDate;
  final TicketStatus status;
  final String? response;
  final String? resolvedBy;
  final String? resolvedDate;

  SupportTicket({
    required this.id,
    required this.userName,
    required this.phoneNumber,
    required this.description,
    required this.submittedDate,
    required this.status,
    this.response,
    this.resolvedBy,
    this.resolvedDate,
  });

  factory SupportTicket.fromJson(Map<String, dynamic> json) {
    return SupportTicket(
      id: json['id'],
      userName: json['userName'],
      phoneNumber: json['phoneNumber'],
      description: json['description'],
      submittedDate: json['submittedDate'],
      status: TicketStatus.values.firstWhere(
        (e) => e.toString() == 'TicketStatus.${json['status']}',
      ),
      response: json['response'],
      resolvedBy: json['resolvedBy'],
      resolvedDate: json['resolvedDate'],
    );
  }
}

// Tipe Status Tiket
enum TicketStatus { proses, selesai, ditolak }
