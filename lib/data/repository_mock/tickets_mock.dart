import 'dart:async';
import 'package:beth_mobile/core/api/types.dart';

import '../../mocks/tickets_mock.dart';

final List<SupportTicket> tickets = [...mockTickets];

Future<List<SupportTicket>> getSupportTickets() async {
  await Future.delayed(Duration(milliseconds: 300));
  print("Fetching mock support tickets...");

  return tickets;
}

Future<SupportTicket> createSupportTicket(SupportTicket data) async {
  await Future.delayed(Duration(milliseconds: 300));
  print("Creating new mock support ticket...");

  final newTicket = SupportTicket(
    id: "TICKET-${DateTime.now().millisecondsSinceEpoch}",
    submittedDate: DateTime.now().toIso8601String(),
    status: "Proses",
    ...data,
  );

  tickets.insert(0, newTicket);
  return newTicket;
}

Future<SupportTicket?> getSupportTicketById(String ticketId) async {
  await Future.delayed(Duration(milliseconds: 300));
  print("Fetching mock support ticket with ID: $ticketId");

  return tickets.firstWhere((ticket) => ticket.id == ticketId, orElse: () => null);
}

Future<SupportTicket> updateSupportTicket(String ticketId, SupportTicket updateData) async {
  await Future.delayed(Duration(milliseconds: 300));
  print("Updating mock support ticket with ID: $ticketId");

  final index = tickets.indexWhere((ticket) => ticket.id == ticketId);
  if (index == -1) throw Exception("Ticket not found");

  tickets[index] = updateData;
  return updateData;
}
