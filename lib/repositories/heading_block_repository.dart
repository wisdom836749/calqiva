import '../database/database_helper.dart';
import '../models/heading_block.dart';

class HeadingBlockRepository{
  static Future<HeadingBlock?> getByBlockId(
    int blockId,
  ) async {
    final db = await DatabaseHelper.database;

    final block = await db.query(
      'heading_blocks',
      where : 'block_id = ?',
      whereArgs : [blockId],
      limit : 1,
    );

    if (block.isEmpty) {
      return null;
    }

    return HeadingBlock.fromMap(block.first);
  }
}