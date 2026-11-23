import 'package:sqflite/sqflite.dart';
import '../../../insert_helpers/sub_topic_helper.dart';
import '../../../insert_helpers/paragraph_helper.dart';
import '../../../insert_helpers/blocks_helper.dart';
import '../../../insert_helpers/quiz_helper.dart';

class SurdEquationsSeed {
  static Future<void> seed(
    Database db, {
      required int topicId
  }) async {
    final subTopicId = await SubTopicHelper.appendSubTopic(
      db,
      topicId : topicId,
      subTitle : 'Surd Equations'
    );

    final headingLessonId_1 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'heading',
      position : 1
    );

    await BlocksHelper.appendHeadingBlock(
      db,
      blockId : headingLessonId_1,
      heading : 'Meaning Of Equations Involving Surds',
    );

    final paragraphLessonId_1 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'paragraph',
      position : 2
    );

    final paragraphId_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendParagraphLink(
      db,
      blockId : paragraphLessonId_1,
      paragraphId : paragraphId_1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : '  An equation involving surds is a mathematical equation that contains one or more surds and an unknown value that we are required to find.\n\n',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : '  When a surds appear in an equation containing an unknown such as ',
      isMath : false,
      isImage : false,
      position : 2
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : r'x',
      isMath : true,
      isImage : false,
      position : 3
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : ', it is called ',
      isMath : false,
      isImage : false,
      position : 4
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : 'surd equation',
      isMath : false,
      isImage : false,
      style : {
        'color' : 'blue',
        'fontSize' : 16
      },
      position : 5
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : '.\n\n',
      isMath : false,
      isImage : false,
      position : 6
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : '  We have two common forms of surd equation:\n\n',
      isMath : false,
      isImage : false,
      position : 7
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : '. ',
      isMath : false,
      isImage : false,
      style : {
        'fontSize' : 40,
        'fontWeight' : 'w900'
      },
      position : 8
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : 'unknown outside the square root.',
      isMath : false,
      isImage : false,
      position : 9
    );
  }
}