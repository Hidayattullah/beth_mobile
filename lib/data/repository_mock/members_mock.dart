import 'dart:async';
import 'package:beth_mobile/core/api/types.dart';
import 'package:flutter/foundation.dart';

import '../../mocks/members_mock.dart';

final List<Member> members = [...initialMembers];

Future<Member?> getMemberByPhoneNumber(String phoneNumber) async {
  await Future.delayed(Duration(milliseconds: 300));
  if (kDebugMode) {
    print("Fetching mock member data for phone: $phoneNumber");
  }

  return members.firstWhere(
    (member) => member.phoneNumber == phoneNumber,
    orElse: () => null,
  );
}

Future<Member?> getMemberById(String id) async {
  await Future.delayed(Duration(milliseconds: 300));
  print("Fetching mock member data for id: $id");

  return members.firstWhere((member) => member.id == id, orElse: () => null);
}

Future<List<Member>> getMembers() async {
  await Future.delayed(Duration(milliseconds: 300));
  print("Fetching all mock members...");

  return members;
}
