import '../database/database_helper.dart';
import '../models/topic.dart';

class TopicRepository {
  static Future<List<Topic>> getAllTopics() async {
    final db = await DatabaseHelper.database;

    final maps = await db.query(
      'topics',
      orderBy : 'title ASC',
    );

    return maps.map((map) => Topic.fromMap(map)).toList();
  }
}