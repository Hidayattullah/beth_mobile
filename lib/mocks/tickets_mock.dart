import 'package:beth_mobile/core/api/types.dart';

List<SupportTicket> mockTickets = [
  SupportTicket(
    id: "TICKET-12345",
    userName: "Jane Doe",
    phoneNumber: "081234567891",
    description:
        "Akun saya tidak aktif, padahal saya sudah lama menjadi anggota.",
    submittedDate: "2024-08-01T10:00:00Z",
    status: TicketStatus.selesai,
    response: "Akun Anda sudah kami aktifkan kembali.",
    resolvedBy: "Admin Gereja",
    resolvedDate: "2024-08-01T11:30:00Z",
  ),
  SupportTicket(
    id: "TICKET-67890",
    userName: "Budi Santoso",
    phoneNumber: "087712345678",
    description: "Saya tidak bisa mereset password.",
    submittedDate: "2024-08-02T14:20:00Z",
    status: TicketStatus.proses,
  ),
  // Add other mock tickets here
];
