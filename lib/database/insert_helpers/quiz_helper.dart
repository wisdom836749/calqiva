import 'package:sqflite/sqflite.dart';

class QuizHelper {
  static Future<int> appendQuiz(
    Database db, {
    required int subTopicId,
    required int question,
    required int option0,
    required int option1,
    required int option2,
    required int option3,
    required int solution,
    required int correctAnswer,
  }) async {
    return await db.insert(
      'quizs',
      {
        'sub_topic_id' : subTopicId,
        'question' : question,
        'option_0' : option0,
        'option_1' : option1,
        'option_2' : option2,
        'option_3' : option3,
        'solution' : solution,
        'correct_answer' : correctAnswer,
      },
    );
  }
}