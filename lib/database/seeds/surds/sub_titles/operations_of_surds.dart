import 'package:sqflite/sqflite.dart';
import '../../../insert_helpers/blocks_helper.dart';
import '../../../insert_helpers/paragraph_helper.dart';
import '../../../insert_helpers/quiz_helper.dart';
import '../../../insert_helpers/sub_topic_helper.dart';

class OperationsOfSurds {
  static Future<void> seed(
    Database db, {
      required int topicId
  }) async {
    final subTopicId = await SubTopicHelper.appendSubTopic(
      db,
      topicId : topicId,
      subTitle : 'Operations Of Surds'
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
      heading : 'Addition Of Surds'
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
      text : '  Addition of surds means adding two or more surd expression s together. For example;\n',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : r'3\sqrt{2} + 5\sqrt{2}',
      isMath : true,
      isImage : false,
      position : 2
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text: '.\n\n',
      isMath : false,
      isImage : false,
      position : 3
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : '  To solve addition of surds corectly, you must understand ',
      isMath : false,
      isImage : false,
      position : 4
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : 'like surds',
      isMath : false,
      isImage : false,
      style : {
        'color' : 'blue',
        'fontSide' : 16
      },
      position : 5
    );

    await ParagraphHelper.appendTextPart (
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
      text : '  Like surds are surds that have the numbet under the square_root sign.\n\n',
      isMath : false,
      isImage : false,
      position : 7
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : 'Example:\n',
      isMath : false,
      isImage : false,
      style: {
        'color' : 'amber',
        'fontSize' : 16
      },
      position : 7
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : r'2\sqrt{3}',
      isMath : true,
      isImage : false,
      position : 8
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : ' and ',
      isMath : false,
      isImage : false,
      position : 9
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : r'5\sqrt{3}',
      isMath : true,
      isImage : false,
      position : 10
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : ' are like surds',
      isMath : false,
      isImage : false,
      position : 11
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : r'4\sqrt{2}',
      isMath : true,
      isImage : false,
      position : 12
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : ' and ',
      isMath : false,
      isImage : false,
      position : 13
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : r'7\sqrt{2}',
      isMath : true,
      isImage : false,
      position : 14
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : ' are like surds',
      isMath : false,
      isImage : false,
      position : 15
    );

    final messageLessonId_1 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'note',
      position : 3
    );

    final messageParagraphIdContext_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphIdContext_1,
      text : ' To add like surds, add their coefficients and keep the square-root unchanged.',
      isMath : false,
      isImage : false,
      position : 1
    );

    await BlocksHelper.appendMessageBlock(
      db,
      blockId : messageLessonId_1,
      type : 'tip',
      paragraphContext : messageParagraphIdContext_1
    );

    final paragraphLessonId_2 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'paragraph',
      position : 4
    );

    final paragraphId_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendParagraphLink(
      db,
      blockId : paragraphLessonId_2,
      paragraphId : paragraphId_2
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : 'Formular for adding surds:\n',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : r'a\sqrt{x} + b\sqrt{x} = (a+b)\sqrt{x}',
    )
  }
}