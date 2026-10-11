import '../database/database_helper.dart';
import '../models/lesson.dart';

class LessonRepository {
  static Future<List<Lesson>> getBySubTopicId(
    int subTopicId,
  ) async {
    final db = await DatabaseHelper.database;

    final maps = await db.query(
      'lessons',
      where : 'sub_topic_id = ?',
      whereArgs : [subTopicId],
      orderBy : 'position ASC'
    );

    return maps.map((map) => Lesson.fromMap(map)).toList();
  }
}