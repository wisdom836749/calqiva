import 'package:sqflite/sqflite.dart';
import 'dart:convert';

class ParagraphHelper {
  static Future<int> appendParagraphBlocks(
    Database db,
  ) async {
    return await db.insert(
      'paragraph_blocks',
      {}
    );
  }

  static Future<void> appendParagraphLink(
    Database db, {
    required int blockId,
    required int paragraphId,
  }) async {
    await db.insert(
      'paragraph_block_links',
      {
        'block_id' : blockId,
        'paragraph_id' : paragraphId
      },
    );
  }

  static Future<void> appendTextPart(
    Database db, {
    required int paragraphId,
    required String text,
    required bool isMath,
    required bool isImage,
    Map<String, dynamic>? style,
    required int position,
  }) async {
    await db.insert(
      'text_part',
      {
        'paragraph_id' : paragraphId,
        'text' : text,
        'is_math' : isMath ? 1 : 0,
        'is_image' : isImage ? 1 : 0,
        'style' : style == null ? null : jsonEncode(style),
        'position' : position
      },
    );
  }
}