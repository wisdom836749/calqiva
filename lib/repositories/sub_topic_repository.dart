import '../database/database_helper.dart';
import '../models/sub_topic.dart';
import 'lesson_repository.dart';

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

  static Future<SubTopic?> getById(
    int id,
  ) async {
    final db = await DatabaseHelper.database;

    final map = await db.query(
      'sub_topics',
      where : 'id = ?',
      whereArgs : [id],
      limit : 1
    );

    if (map.isEmpty) {
      return null;
    }

    return SubTopic.fromMap(map.first);
  }

  static Future<SubTopic?> getCompleteById(
    int id,
  ) async {
    final subTopic = await getById(id);

    if (subTopic == null) {
      return null;
    }

    subTopic.blocks = await LessonRepository.getLoadContext(
      subTopic.id,
    );

    return subTopic;
  }
}