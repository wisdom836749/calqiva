import '../database/database_helper.dart';
import '../models/lesson.dart';

import '../models/heading_block.dart';
import 'heading_block_repository.dart';
import '../models/paragraph_block.dart';
import 'paragraph_block_repository.dart';
import '../models/example_block.dart';
import 'example_block_repository.dart';
import '../models/message_block.dart';
import 'message_block_repository.dart';
import '../models/paragraph_block_link.dart';
import 'paragraph_block_link_repository.dart';


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

  static Future<HeadingBlock?> getHeading(
    Lesson block,
  ) async {
    if (block.blockType != LessonType.heading) {
      return null;
    }
    
    return HeadingBlockRepository.getByBlockId(
      block.id,
    );
  }

  static Future<ParagraphBlock?> getParagraph(
    Lesson block,
  ) async {
    if (block.blockType != LessonType.paragraph) {
      return null;
    }

    final link = await ParagraphBlockLinkRepository.getByBlockId(
      block.id
    );

    if (link == null) {
      return null;
    }

    return ParagraphBlockRepository.getById(
      link.paragraphId,
    );
  }

  static Future<ExampleBlock?> getExample(
    Lesson block,
  ) async {
    if (block.blockType != LessonType.example) {
      return null;
    }

    return ExampleBlockRepository.getCompleteByBlockId(
      block.id,
    );
  }

  static Future<MessageBlock?> getMessage(
    Lesson block,
  ) async {
    if(
      block.blockType != LessonType.note &&
      block.blockType != LessonType.summary &&
      block.blockType != LessonType.warning &&
      block.blockType != LessonType.tip
    ) {
      return null;
    }

    return MessageBlockRepository.getCompleteByBlockId(
      block.id,
    );
  }

  static Future<List<Lesson>> getLoadContext(
    int subTopicId,
  ) async {
    final blocks = await getBySubTopicId(subTopicId);

    for (final block in blocks) {
      if (block.blockType == LessonType.heading) {
        block.heading = await getHeading(block);
      }

      if (block.blockType == LessonType.paragraph) {
        block.paragraph = await getParagraph(block);
      }

      if (block.blockType == LessonType.example) {
        block.example = await getExample(block);
      }

      if (
        block.blockType == LessonType.tip ||
        block.blockType == LessonType.note ||
        block.blockType == LessonType.summary ||
        block.blockType == LessonType.warning
      ) {
        block.message = await getMessage(block);
      }
    }

    return blocks;
  }
}