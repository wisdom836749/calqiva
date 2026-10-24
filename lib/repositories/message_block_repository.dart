import '../database/database_helper.dart';
import '../models/message_block.dart';
import 'paragraph_block_repository.dart';

class MessageBlockRepository {
  static Future<MessageBlock?> getByBlockId(
    int blockId,
  ) async {
    final db = await DatabaseHelper.database;

    final block = await db.query(
      'message_blocks',
      where : 'block_id = ?',
      whereArgs : [blockId],
      limit : 1,
    );

    if (block.isEmpty) {
      return null;
    }

    return MessageBlock.fromMap(block.first);
  }

  static Future<MessageBlock?> getCompleteByBlockId(
    int blockId,
  ) async {
    final message = await getByBlockId(blockId);

    if (message != null) {

      message.context = await ParagraphBlockRepository.getById(
        message.paragraphContext,
      );
    }

    return message;
  }
}