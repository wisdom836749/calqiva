import '../database/database_helper.dart';
import '../models/sub_topic.dart';

class SubTopicRepository {
  static Future<List<SubTopic>> getByTopicId (
    int topicId,
  ) async {
    final db = await DatabaseHelper.database;

    final maps = await db.query(
      'sub_topics',
      where : 'topic_id = ?',
      whereArgs : [topicId],
    );

    return maps.map((map) => SubTopic.fromMap(map)).toList();
  }
}