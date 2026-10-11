import 'package:sqflite/sqflite.dart';

class SubTopicHelper {
  static Future<int> appendSubTopic(
    Database db, {
    required int topicId,
    required String subTitle,
  }) async {
    return await db.insert(
      'sub_topics',
      {
        'topic_id' : topicId,
        'sub_title' : subTitle
      },
    );
  }
}