import 'package:sqflite/sqflite.dart';

class BlocksHelper {
  static Future<int> appendLesson(
    Database db, {
    required int subTopicId,
    required String blockType,
    required int position,
  }) async {
    return await db.insert(
      'lessons',
      {
        'sub_topic_id' : subTopicId,
        'block_type' : blockType,
        'position' : position,
      },
    );
  }

  static Future<void> appendHeadingBlock(
    Database db, {
    required int blockId,
    required String heading,
  }) async {
    await db.insert(
      'heading_blocks',
      {
        'block_id' : blockId,
        'heading' : heading,
      },
    );
  }

  static Future<void> appendExampleBlock(
    Database db, {
    required int blockId,
    required String title,
    required int paragraphQuestion,
    required int paragraphSolution,
    required int paragraphAnswer,
  }) async {
    await db.insert(
      'example_blocks',
      {
        'block_id' : blockId,
        'title' : title,
        'paragraph_question' : paragraphQuestion,
        'paragraph_solution' : paragraphSolution,
        'paragraph_answer'  : paragraphAnswer,
      },
    );
  }

  static Future<void> appendMessageBlock(
    Database db, {
    required int blockId,
    required String type,
    required String title,
    required int paragraphContext
  }) async {
    await db.insert(
      'message_blocks',
      {
        'block_id' : blockId,
        'type' : type,
        'title' : title,
        'paragraph_context' : paragraphContext
      },
    );
  }
}