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

    final paragraphLessonId_3 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'paragraph',
      position : 9
    );

    final paragraphId_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendParagraphLink(
      db,
      blockId : paragraphLessonId_3,
      paragraphId : paragraphId_3
    );

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
      blockType : 'example',
      position : 10
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

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_3,
      text : r'12\sqrt{3} - 7\sqrt{3}.',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_3,
      text : r'''12\sqrt{3} - 7\sqrt{3}
      
      = (12 - 7)\sqrt{3}
      
      = 5\sqrt{3}''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_3,
      text : r'5\sqrt{3}',
      isMath : true,
      isImage : false,
      position : 1
    );

    await BlocksHelper.appendExampleBlock(
      db,
      blockId : exampleLessonId_3,
      title : 'Example 1',
      paragraphQuestion : exampleParagraphIdQuestion_3,
      paragraphSolution : exampleParagraphIdSolution_3,
      paragraphAnswer : exampleParagraphIdAnswer_3,
    );

    final exampleLessonId_4 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'example',
      position : 11
    );

    final exampleParagraphIdQuestion_4 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_4,
      text : 'Simplify: ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_4,
      text : r'2\sqrt{27} + \sqrt{75} - 5\sqrt{12}',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_4 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_4,
      text : r'''2\sqrt{27} + \sqrt{75} - 5\sqrt{12}
      
      27 = 9 \times 3
      \therefore 2\sqrt{27} = 2\sqrt{9 \times 3}
      = 2 \times 3\sqrt{3}
      = 6\sqrt{3}
      
      75 = 25 \times 3
      \therfore \sqrt{75} = \sqrt{25 \times 3}
      = 5\sqrt{3}
      
      12 = 4 \times 3
      \therefore -5\sqrt{12} = -5\sqrt{4 \times 3}
      = -5 \times 2\sqrt{3}
      = -10\sqrt{3}
      
      \therefore 6\sqrt{3} + 5\sqrt{3} - 10\sqrt{3}
      
      = (6 + 5 - 10)\sqrt{3}
      
      = 1\sqrt{3} or \sqrt{3}''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_4 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_4,
      text : r'\sqrt{3}',
      isMath : true,
      isImage : false,
      position : 1
    );

    await BlocksHelper.appendExampleBlock(
      db,
      blockId : exampleLessonId_4,
      title : 'Example 2',
      paragraphQuestion : exampleParagraphIdQuestion_4,
      paragraphSolution : exampleParagraphIdSolution_4,
      paragraphAnswer : exampleParagraphIdAnswer_4
    );

    final headingLessonId_3 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'heading',
      position : 12
    );

    await BlocksHelper.appendHeadingBlock(
      db,
      blockId : headingLessonId_3,
      heading : 'Multiplication Of Surds',
    );

    final paragraphLessonId_4 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'paragraph',
      position : 13
    );

    final paragraphId_4 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendParagraphLink(
      db,
      blockId : paragraphLessonId_4,
      paragraphId : paragraphId_4
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_4,
      text : '  Multiplify of surds means nultiplying  two or more expressions that contain roots such as square roots.\n\n',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_4,
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
      paragraphId : paragraphId_4,
      text : r'\sqrt{2} \times \sqrt{3}',
      isMath : true,
      isImage : false,
      position : 3
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_4,
      text : '\n\n  To multipy,surds, we use the role;\n',
      isMath : false,
      isImage : false,
      position : 4
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_4,
      text : r'\sqrt{a} \times \sqrt{b} = \sqrt{ab}',
      isMath : true,
      isImage : false,
      position : 5
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_4,
      text : '  This means that when nultiplying two square roots, we multiply the numbers inside the square roots.',
      isMath : false,
      isImage : true,
      position : 6
    );

    final messageLessonId_3 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'tip',
      position : 14
    );

    final messageParagraphIdContext_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphIdContext_3,
      text : '  After nultiplying surds, always check whether the answer can be simplified.',
      isMath : false,
      isImage : false,
      position : 1
    );

    await BlocksHelper.appendMessageBlock(
      db,
      blockId : messageLessonId_3,
      type : 'tip',
      paragraphContext : messageParagraphIdContext_3
    );

    final exampleLessonId_5 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'example',
      position : 15
    );

    final  exampleParagraphIdQuestion_5 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_5,
      text : 'Simplify: ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_5,
      text : r'\sqrt{5} \times \sqrt{10}',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_5 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_5,
      text : r'''\sqrt{5} \times \sqrt{10}
      
      = \sqrt{5 \times 10}
      
      = \sqrt{50}
      
      = \sqrt{25 \times 2},
      
      = \sqrt{25} \times \sqrt{2}
      
      = 5\sqrt{2}''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_5 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_5,
      text : r'5\sqrt{2}',
      isMath : true,
      isImage : false,
      position : 1
    );

    await BlocksHelper.appendExampleBlock(
      db,
      blockId : exampleLessonId_5,
      title : 'Example 1',
      paragraphQuestion : exampleParagraphIdQuestion_5,
      paragraphSolution : exampleParagraphIdSolution_5,
      paragraphAnswer : exampleParagraphIdAnswer_5
    );

    final exampleLessonId_6 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'example',
      position : 16
    );

    final exampleParagraphIdQuestion_6 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_6,
      text : 'Simplify: ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_6,
      text : r'3\sqrt{2} \times 2\sqrt{8}',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_6 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_6,
      text : r'''3\sqrt{2} \times 2\sqrt{8}
      
      3 \times 2 = 6
      
      \sqrt{2} \times \sqrt{8} = \sqrt{16}
      
      = 6\sqrt{16}
      
      = 6 \times 4
      
      = 24''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_6 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_6,
      text : r'24',
      isMath : true,
      isImage : false,
      position : 1
    );

    await BlocksHelper.appendExampleBlock(
      db,
      blockId : exampleLessonId_6,
      title : 'Example 2',
      paragraphQuestion : exampleParagraphIdQuestion_6,
      paragraphSolution : exampleParagraphIdSolution_6,
      paragraphAnswer : exampleParagraphIdAnswer_6
    );

    final exampleLessonId_7 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'example',
      position : 17
    );

    final exampleParagraphIdQuestion_7 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_7,
      text : 'Simplify: ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_7,
      text : r'2\sqrt{3}(\sqrt{3} + 4)',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_7 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_7,
      text : r'''2\sqrt{3}(\sqrt{3} + 4)
      
      = 2\sqrt{3} \times \sqrt{3}
      
      = 2 \times 3 = 6
      
      2\sqrt{3} \times 4
      
      = 8\sqrt{3}
      
      = 6 + 8\sqrt{3}''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_7 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_7,
      text : r'6 + 8\sqrt{3}',
      isMath : true,
      isImage : false,
      position : 1
    );

    await BlocksHelper.appendExampleBlock(
      db,
      blockId : exampleLessonId_7,
      title : 'Example 3',
      paragraphQuestion : exampleParagraphIdQuestion_7,
      paragraphSolution : exampleParagraphIdSolution_7,
      paragraphAnswer : exampleParagraphIdAnswer_7
    );

    final exampleLessonId_8 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'example',
      position : 18
    );

    final exampleParagraphIdQuestion_8 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_8,
      text : 'Simplify: ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_8,
      text : r'(\sqrt{2} + 3)(\sqrt{2} + 1)',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_8 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_8,
      text : r'''(\sqt{2} + 3)(\sqrt{2} + 1)
      
      = \sqrt{2} \times \sqrt{2} = 2
      
      = \sqrt{2} \times 1 = \sqrt{2}
      
      = 3 \times \sqrt{2} = 3\sqrt{2}
      
      = 3 \times 1 = 3
      
      = 2 + \sqrt{2} + 3\sqrt{2} + 3
      
      = 5 + 4\sqrt{2}''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_8 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_8,
      text : r'5 + 4\sqrt{2}',
      isMath : true,
      isImage : false,
      position : 1
    );

    await BlocksHelper.appendExampleBlock(
      db,
      blockId : exampleLessonId_8,
      title : 'Example 4',
      paragraphQuestion : exampleParagraphIdQuestion_8,
      paragraphSolution : exampleParagraphIdSolution_8,
      paragraphAnswer : exampleParagraphIdAnswer_8
    );

    final exampleLessonId_9 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'example',
      position : 19
    );

    final exampleParagraphIdQuestion_9 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_9,
      text : 'Simplify: ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_9,
      text : r'\sqrt{2} \times \sqrt{3} \times \sqrt{5} \times \sqrt{12} \times \sqrt{45} \times \sqrt{50}',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_9 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_9,
      text : r'''\sqrt{2} \times \sqrt{3} \times \sqrt{5} \times \sqrt{12} \times \sqrt{45} \times \sqrt{50}
      
      = \sqrt{2 \times 3 \times 5 \times 12 \times 45 \times 50}
      
      = \sqrt{(2 \times 50)(3 \times 12)(5 \times 45)}
      
      = \sqrt{100 \times 36 \times 225}
      
      = 10 \times 6 \times 15
      
      = 900''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_9 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_9,
      text : r'900',
      isMath : true,
      isImage : false,
      position : 1
    );

    await BlocksHelper.appendExampleBlock(
      db,
      blockId : exampleLessonId_9,
      title : 'Example 5',
      paragraphQuestion : exampleParagraphIdQuestion_9,
      paragraphSolution : exampleParagraphIdSolution_9,
      paragraphAnswer : exampleParagraphIdAnswer_9
    );

    final messageLessonId_4 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'tip',
      position :20
    );

    final messageParagraphIdContext_4 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphIdContext_4,
      text : '  When multiplying square roots, you can combine them under one square root sign, pairing the numbers to form perfect-square makes simplification easier.',
      isMath : false,
      isImage : false,
      position : 1
    );

    await BlocksHelper.appendMessageBlock(
      db,
      blockId : messageLessonId_4,
      type : 'tip',
      paragraphContext : messageParagraphIdContext_4
    );

    final headingLessonId_4 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'heading',
      position : 21
    );

    await BlocksHelper.appendHeadingBlock(
      db,
      blockId : headingLessonId_4,
      heading : 'Division Of Surds',
    );

    final paragraphLessonId_5 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'paragraph',
      position : 22
    );

    final paragraphId_5 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendParagraphLink(
      db,
      blockId : paragraphLessonId_5,
      paragraphId : paragraphId_5
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_5,
      text : '  Division of surds means dividing one by another surd or dividing a number containing a surd by another number containing a surd.',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_5,
      text : '\n\nFor example:\n',
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
      paragraphId : paragraphId_5,
      text : r'\frac{\sqrt{12}}{\sqrt{3}}',
      isMath : true,
      isImage : false,
      position : 3
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_5,
      text : '\n  Where we are dividing ',
      isMath : false,
      isImage : false,
      position : 4
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_5,
      text : r'\sqrt{12}',
      isMath : true,
      isImage : false,
      position : 5
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_5,
      text : ' by ',
      isMath : false,
      isImage : false,
      position : 6
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_5,
      text : r'\sqrt{3}.',
      isMath : true,
      isImage : false,
      position : 7
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_5,
      text : '\n\n  There are two improtant rules you need to understand;',
      isMath : false,
      isImage : false,
      position : 8
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_5,
      text : '\n\nRULE 1: Dividing two square roots.',
      isMath : false,
      isImage : false,
      style : {
        'fontWeight' : 'w500',
        'fontSide' : 16
      },
      position : 9
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_5,
      text : '  \nDivide the numbers inside the square roots, then find the square root of the answer.',
      isMath : false,
      isImage : false,
      position : 10
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_5,
      text : '\n\nFormula:\n',
      isMath : false,
      isImage : false,
      style : {
        'color' : 'amber',
        'fontSize' : 16
      },
      position : 11
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_5,
      text : r'\frac{\sqrt{a}}{\sqrt{b}} = \sqrt{\frac{a}{b}}',
      isMath : false,
      isImage : false,
      position : 12
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_5,
      text : '\n\nRULE 2: Dividing coefficients and surds',
      isMath : false,
      isImage : false,
      style : {
        'fontWeight' : 'w500',
        'fontSize' : 16
      },
      position : 13
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_5,
      text : '\n  Divide the oridinary numbers(coefficients) separately, divide the square roots separately, and then multiply the results',
      isMath : false,
      isImage : false,
      position : 14
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_5,
      text : '\n\nFormula:\n',
      isMath : false,
      isImage : false,
      style : {
        'color' : 'amber',
        'fontSize' : 16
      },
      position : 15
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_5,
      text : r'\frac{a\sqrt{x}}{b\sqrt{y}} = \frac{a}{b} \times \sqrt{\frac(x){y}}',
      isMath : true,
      isImage : false,
      position : 16
    );

    final exampleLessonId_10 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'example',
      position : 23
    );

    final exampleParagraphIdQuestion_10 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_10,
      text : 'Simplify: ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_10,
      text : r'\frac{\sqrt{12}}{\sqrt{3}}.',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_10 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_10,
      text : r'''\frac{\sqrt{12}}{\sqrt{3}}
      
      = \sqrt{\frac{12}{3}}
      
      = \sqrt{4}
      
      = 2''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_10 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_10,
      text : r'2',
      isMath : true,
      isImage : false,
      position : 1
    );

    await BlocksHelper.appendExampleBlock(
      db,
      blockId : exampleLessonId_10,
      title : 'Example 1',
      paragraphQuestion : exampleParagraphIdQuestion_10,
      paragraphSolution : exampleParagraphIdSolution_10,
      paragraphAnswer : exampleParagraphIdAnswer_10
    );

    final exampleLessonId_11 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'example',
      position : 24
    );

    final exampleParagraphIdQuestion_11 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_11,
      text : 'Simplify: ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_11,
      text : r'\frac{6\sqrt{10}}{2\sqrt{2}}',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_11 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_11,
      text : r'''\frac{6\sqrt{10}}{2\sqrt{2}}
      
      = \frac{6}{2} \times \frac{\sqrt{10}}{\sqrt{2}}
      
      = 3 \times \sqrt{5}
      
      = 3\sqrt{5}''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_11 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_11,
      text : r'3\sqrt{5}',
      isMath : true,
      isImage : false,
      position : 1
    );

    await BlocksHelper.appendExampleBlock(
      db,
      blockId : exampleLessonId_11,
      title : 'Example 2',
      paragraphQuestion : exampleParagraphIdQuestion_11,
      paragraphSolution : exampleParagraphIdSolution_11,
      paragraphAnswer : exampleParagraphIdAnswer_11
    );
  }
}