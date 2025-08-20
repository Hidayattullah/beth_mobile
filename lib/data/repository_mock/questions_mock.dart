import 'dart:async';
import 'package:beth_mobile/core/api/types.dart';

import '../../mocks/questions_mock.dart';

final List<Question> questions = [...mockQuestions];

Future<List<Question>> getQuestions() async {
  await Future.delayed(Duration(milliseconds: 300));
  print("Fetching mock questions...");

  return questions;
}

Future<Question> addQuestion(Question data) async {
  await Future.delayed(Duration(milliseconds: 300));
  print("Adding mock question...");

  final newQuestion = Question(
    id: "q-${DateTime.now().millisecondsSinceEpoch}",
    submittedDate: DateTime.now().toIso8601String(),
    isResponded: false,
    isArchived: false,
    ...data,
  );

  questions.insert(0, newQuestion);
  return newQuestion;
}

Future<Question> respondToQuestion(String questionId, String responseText, String responderName) async {
  await Future.delayed(Duration(milliseconds: 300));
  print("Responding to mock question $questionId...");

  final question = questions.firstWhere((q) => q.id == questionId);

  if (question != null) {
    question.responseText = responseText;
    question.responseBy = responderName;
    question.isResponded = true;
    return question;
  }

  throw Exception("Question not found");
}
