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
      isMath : true,
      isImage : false,
      position : 2
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : '\n\nWhere:\n',
      isMath : false,
      isImage : false,
      style : {
        'color' : 'amber',
        'fontSize' : 16
      },
      position : 3
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : r'a',
      isMath : true,
      isImage : false,
      position : 4
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : ' => coefficient of the first surd.\n',
       isMath : false,
       isImage : false,
       position : 5
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : r'b',
      isMath : true,
      isImage : false,
      position : 6
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : ' => coefficient of the second surd.\n',
      isMath : false,
      isImage : false,
      position : 7
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : r'\sqrt{x}',
      isMath : true,
      isImage : false,
      position : 8
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : ' => the common surd.\n\n',
      isMath : false,
      isImage : false,
      position : 9
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : 'For example:\n',
      isMath : false,
      isImage : false,
      style : {
        'color' : 'amber',
        'fontSize' : 16
      },
      position : 10
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : r'2\sqrt{3} + 4\sqrt{3}',
      isMath : true,
      isImage : false,
      position : 11
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : '\n\nThe coefficient are ',
      isMath : false,
      isImage : false,
      position : 12
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : r'2',
      isMath : true,
      isImage : false,
      position : 13
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : ' and ',
      isMath : false,
      isImage : false,
      position : 14
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : r'4',
      isMath : false,
      isImage : false,
      position : 15
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : '.\n\n',
      isMath : false,
      isImage : false,
      position : 16
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : r'''
      \therefore (2+4)\sqrt{3}

      = 6\sqrt{3}
      ''',
      isMath : true,
      isImage : false,
      position : 17
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : '\n\n  notice that we add ',
      isMath : false,
      isImage : false,
      position : 18
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : r'2',
      isMath : true,
      isImage : false,
      position : 19
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : ' and ',
      isMath : false,
      isImage : false,
      position : 20
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : r'4',
      isMath : true,
      isImage : false,
      position : 21
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : ', but we do not change ',
      isMath : false,
      isImage : false,
      position : 22
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : r'\sqrt{3}',
      isMath : true,
      isImage : false,
      position : 23
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : '.',
      isMath : false,
      isImage : false,
      position : 24
    );

    final messageLessonId_2 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'note',
      position : 5
    );

    final messageParagraphIdContext_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphIdContext_2,
      text : '  If the first surd is ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphIdContext_2,
      text : r'\sqrt{2}',
      isMath : true,
      isImage : false,
      position : 2
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphIdContext_2,
      text : ' while the second surd is ',
      isMath : false,
      isImage : false,
      position : 3
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphIdContext_2,
      text : r'\sqrt{3}',
      isMath : true,
      isImage : false,
      position : 4
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphIdContext_2,
      text : ', we cannot combine them because they are different surds. Therefore, the  answer remain ',
      isMath : false,
      isImage : false,
      position : 5
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphIdContext_2,
      text : r'\sqrt{2} + \sqrt{3}.',
      isMath : true,
      isImage : false,
      position : 6
    );

    await BlocksHelper.appendMessageBlock(
      db,
      blockId : messageLessonId_2,
      type : 'note',
      paragraphContext : messageParagraphIdContext_2
    );

    final exampleLessonId_1 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'example',
      position : 6
    );

    final exampleParagraphIdQuestion_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_1,
      text : 'Simplify: ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_1,
      text : r'2\sqrt{3} + 4\sqrt{3} + 6\sqrt{3}.',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_1,
      text : r'''2\sqrt{3} + 4\sqrt{3} + 6\sqrt{3}
      
      = (2 + 4 + 6)\sqrt{3}
      
      = 12\sqrt{3}''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_1,
      text : r'12\sqrt{3}',
      isMath : true,
      isImage : false,
      position : 1
    );

    await BlocksHelper.appendExampleBlock(
      db,
      blockId : exampleLessonId_1,
      title : 'Example 1',
      paragraphQuestion : exampleParagraphIdQuestion_1,
      paragraphSolution : exampleParagraphIdSolution_1,
      paragraphAnswer : exampleParagraphIdAnswer_1
    );

    final exampleLessonId_2 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'example',
      position : 7
    );

    final exampleParagraphIdQuestion_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_2,
      text : 'Simplify : ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_2,
      text : r'\sqrt{8} + \sqrt{18}.',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_2,
      text : r'''\sqrt{8} + \sqrt{18}
      
      8 = 4 \times 2
      
      \therefore \sqrt{8} = \sqrt{4} \times \sqrt{2}
      
      = 2\sqrt{2}
      
      18 = 9 \times 2
      
      \therefore \sqrt{18} = \sqrt{9} \times \sqrt{2}
      
      = 3\sqrt{2}
      
      \therefore \sqrt{8} + \sqrt{18} = 2\sqrt{2} + 3\sqrt{2}
      
      = (2 + 3)\sqrt{2}
      
      = 5\sqrt{2}''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_2,
      text : r'5\sqrt{2}',
      isMath : true,
      isImage : false,
      position : 1
    );

    await BlocksHelper.appendExampleBlock(
      db,
      blockId : exampleLessonId_2,
      title : 'Example 2',
      paragraphQuestion : exampleParagraphIdQuestion_2,
      paragraphSolution : exampleParagraphIdSolution_2,
      paragraphAnswer : exampleParagraphIdAnswer_2
    );

    final headingLessonId_2 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'heading',
      position : 8
    );

    await BlocksHelper.appendHeadingBlock(
      db,
      blockId : headingLessonId_2,
      heading : 'Subtraction Of Surds'
    );

    final paragraphId_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : '  Subtraction of surds means subtract one surd expression from another.\n\n',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : 'For example:\n',
      isMath : false,
      isImage : false,
      style : {
        'color' : 'amber',
        'fontSize' : 16
      },
      position : 2
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : r'7\sqrt{3} - 2\sqrt{3}',
      isMath : true,
      isImage : false,
      position : 3
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : '\n\nRule for subtacting surds;\n',
      isMath : false,
      isImage : false,
      position : 4
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : r'a\sqrt{x} - b\sqrt{x} = (a - b)\sqrt{x}',
      isMath : true,
      isImage : false,
      position : 5
    );

    final exampleLessonId_3 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      position : 9
    );

    final exampleParagraphIdQuestion_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_3,
      text : 'Simplify: ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart()
  }
}