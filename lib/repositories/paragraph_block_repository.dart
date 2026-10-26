import '../database/database_helper.dart';
import '../models/paragraph_block.dart';
import 'text_part_repository.dart';

class ParagraphBlockRepository {
  static Future<ParagraphBlock?> getById(
    int id,
  ) async {
    final db = await DatabaseHelper.database;

    final block = await db.query(
      'paragraph_blocks',
      where : 'id = ?',
      whereArgs : [id],
      limit : 1,
    );

    if (block.isEmpty) {
      return null;
    }

    final blockId = block.first['id'] as int;

    final parts =await TextPartRepository.getByParagraphId(id);

    return ParagraphBlock(
      id : blockId,
      parts : parts
    );
  }
}