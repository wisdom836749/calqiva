import '../database/database_helper.dart';
import '../models/text_part.dart';

class TextPartRepository {
  static Future<List<TextPart>> getByParagraphId(
    int paragraphId,
  ) async {
    final db = await DatabaseHelper.database;

    final maps = await db.query(
      'text_parts',
      where : 'paragraph_id = ?',
      whereArgs : [paragraphId],
      orderBy : 'position ASC',
    );

    return maps.map((map) => TextPart.fromMap(map)).toList();
  }
}