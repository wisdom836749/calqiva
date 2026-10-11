import '../database/database_helper.dart';
import '../models/example_block.dart';

class ExampleBlockRepository {
  static Future<ExampleBlock?> getByBlockId(
    int blockId,
  ) async {
    final db = await DatabaseHelper.database;

    final block = await db.query(
      'example_blocks',
      where : 'block_id = ?',
      whereArgs : [blockId],
      limit : 1,
    );

    if (block.isEmpty) {
      return null;
    }

    return ExampleBlock.fromMap(block.first);
  }
}