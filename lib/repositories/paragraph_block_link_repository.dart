import '../database/database_helper.dart';
import '../models/paragraph_block_link.dart';

class ParagraphBlockLinkRepository {
  static Future<ParagraphBlockLink?> getByBlockId (
    int blockId,
  ) async {
    final db = await DatabaseHelper.database;

    final link = await db.query(
      'paragraph_block_links',
      where : 'block_id = ?',
      whereArgs : [blockId],
      limit : 1,
    );

    if (link.isEmpty) {
      return null;
    }

    return ParagraphBlockLink.fromMap(link.first);
  }
}