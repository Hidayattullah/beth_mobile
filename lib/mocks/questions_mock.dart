import 'package:beth_mobile/core/api/types.dart';

List<Question> mockQuestions = [
  Question(
    id: "q1",
    userName: "Budi S.",
    avatarUrl: "",
    questionText: "Bagaimana cara mendaftar untuk pelayanan musik di gereja?",
    submittedDate: DateTime.now().subtract(Duration(days: 1)).toIso8601String(),
    isResponded: true,
    responseBy: "Admin Gereja",
    responseText:
        "Silakan isi formulir pendaftaran pelayanan di link berikut: [link].",
    isArchived: false,
    archivedDate: null,
  ),
  Question(
    id: "q2",
    userName: "Rina A.",
    avatarUrl: "", // Tambahkan avatarUrl jika diperlukan
    questionText: "Saya ingin bertanya mengenai jadwal ibadah anak.",
    submittedDate: DateTime.now().subtract(Duration(days: 2)).toIso8601String(),
    isResponded: false,
    responseBy: null, // Belum ada respons, maka null
    responseText: null, // Belum ada respons
    isArchived: false,
    archivedDate: null, // Jika tidak diarsipkan, biarkan null
  ),
  Question(
    id: "q3",
    userName: "Joko P.",
    avatarUrl: "/avatars/joko.png", // Menambahkan avatar untuk pertanyaan ini
    questionText:
        "Apakah gereja menyediakan layanan konseling pranikah? Kami berencana menikah tahun depan dan ingin mendapatkan bimbingan.",
    submittedDate: DateTime.now().subtract(Duration(days: 3)).toIso8601String(),
    isResponded: true,
    responseBy: "Tubagus Rifan",
    responseText:
        "Puji Tuhan untuk rencananya, Joko. Ya, kami menyediakan kelas bimbingan pranikah. Silakan hubungi sekretariat gereja untuk informasi jadwal dan pendaftaran.",
    isArchived: false,
    archivedDate: null, // Belum diarsipkan
  ),
  Question(
    id: "q4",
    userName: "Lia K.",
    avatarUrl: "", // Avatar kosong
    questionText:
        "Di mana saya bisa mendapatkan materi atau rekaman khotbah dari ibadah hari Minggu yang lalu?",
    submittedDate: DateTime.now().subtract(Duration(days: 5)).toIso8601String(),
    isResponded: true,
    responseBy: "Admin Gereja",
    responseText:
        "Tentu, semua rekaman khotbah tersedia di kanal YouTube resmi gereja kita. Anda bisa mencarikannya dengan judul 'The Lord's Vineyard Official'.",
    isArchived: false,
    archivedDate: null, // Belum diarsipkan
  ),
  Question(
    id: "q5",
    userName: "David T.",
    avatarUrl: "", // Avatar kosong
    questionText:
        "Saya adalah anggota baru, bagaimana cara saya bisa bergabung dengan kelompok sel (komsel)?",
    submittedDate: DateTime.now().subtract(Duration(days: 6)).toIso8601String(),
    isResponded: false, // Belum dijawab
    responseBy: null, // Belum ada respons
    responseText: null, // Belum ada respons
    isArchived: false,
    archivedDate: null, // Belum diarsipkan
  ),
  Question(
    id: "q6",
    userName: "Siti H.",
    avatarUrl: "", // Avatar kosong
    questionText: "Apakah ada program baptisan dalam waktu dekat?",
    submittedDate: DateTime.now().subtract(Duration(days: 8)).toIso8601String(),
    isResponded: true,
    responseBy: "Admin Gereja",
    responseText:
        "Ya, pendaftaran untuk baptisan air akan dibuka pada minggu pertama bulan September. Pantau terus warta jemaat untuk informasi lebih lanjut.",
    isArchived: true, // Sudah diarsipkan
    archivedDate: DateTime.now().subtract(Duration(days: 1)).toIso8601String(),
  ),
];
