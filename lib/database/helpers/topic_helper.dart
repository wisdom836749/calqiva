import 'package:sqflite/sqflite.dart';

class TopicHelper{
  static Future<int> appendTopic(
    Database db, {
    required String title,
    required String image,
  }) async {
    return await db.insert(
      'topics',
      {
        'title' : title,
        'image' : image,
      },
    );
  }
}