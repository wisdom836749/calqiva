import '../database/database_helper.dart';
import '../models/example_block.dart';
import 'paragraph_block_repository.dart';

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

  static Future<ExampleBlock?> getCompleteByBlockId(
    int blockId,
  ) async {
    final example = await getByBlockId(blockId);

    if (example != null) {

      example.question = await ParagraphBlockRepository.getById(
        example.paragraphQuestion,
      );

      example.solution = await ParagraphBlockRepository.getById(
        example.paragraphSolution,
      );

      example.answer = await ParagraphBlockRepository.getById(
        example.paragraphAnswer,
      );
    }
    
    return example;
  }
}