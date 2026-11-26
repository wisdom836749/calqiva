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
      text : 'Unknown outside the square root.\n\n',
      isMath : false,
      isImage : false,
      position : 9
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : r'x + \sqrt{5} = 9',
      isMath : true,
      isImage : false,
      position : 10
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : '  This type can often be solved using ordinary algebraic operations.\n\n',
      isMath : false,
      isImage : false,
      position : 11
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
      position : 12
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : 'Unknown inside the square root.\n\n',
      isMath : false,
      isImage : false,
      position : 13
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : r'\sqrt{x + 5} = 4',
      isMath : true,
      isImage : false,
      position : 14
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : '  This type usually requires squaring both side to remove the square root.\n\n',
      isMath : false,
      isImage : false,
      position : 15
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : '  Now that we understand what surd equation are and can recongnise their different forms, we can learn how to solve simple equation involving surds using algbraic operations.',
      isMath : false,
      isImage : false,
      position : 16
    );

    final headingLessonId_2 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'heading',
      position : 3
    );

    await BlocksHelper.appendHeadingBlock(
      db,
      blockId : headingLessonId_2,
      heading : 'Solving Simple Equation Involving Surds',
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
      text : '  Solving simple equations involving surds means finding the unknown value in an equation containing surds by using ordinary algebraic operations such as addition, subtration, multiplication and division.\n\n',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : 'For example:\n',
      style : {
        'color' : 'amber',
        'fontSize' : 16
      },
      position : 2
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : r'3x + \sqrt{2} = 10',
      isMath : true,
      position : 3
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : '\n\nnow move the surd to the right-hand side\n\n',
      position : 4
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : r'3x = 10 - \sqrt{2}',
      isMath : true,
      position : 5
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : '\n\ndivide both by ',
      position : 6
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : r'''3
      
      ''',
      isMath : true,
      position : 7
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_2,
      text : r'x = \frac{10 - \sqrt{2}}{3}',
      isMath : true,
      position : 8
    );

    final messageLessonId_1 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'note',
      position : 5
    );

    final messageParagraphIdContext_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphIdContext_1,
      text : '  Not every equation involving surds requires squaring. If ordinary algebraic operations can isolate the unknown, use them.',
      position : 1
    );

    await BlocksHelper.appendMessageBlock(
      db,
      blockId : messageLessonId_1,
      type : 'note',
      paragraphContext : messageParagraphIdContext_1
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
      text : 'Solve: ',
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_1,
      text : r'\sqrt{3x} + 2 = 8',
      isMath : true,
      position : 2
    );

    final exampleParagraphIdSolution_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_1,
      text : r'''\sqrt{3x} + 2 = 8
      
      \sqrt{3x} = 8 - 2
      
      \sqrt{3x} = 6
      
      x = \frac{6}{\sqrt{3}}
      
      \frac{6}{\sqrt{3}} = \frac{6}{\sqrt{3}} \times \frac{\sqrt{3}}{\sqrt{3}} = \frac{6\sqrt{3}}{3}
      
      \therefore x = \frac{6\sqrt{3}}{3}
      
      x = 2\sqrt{3}''',
      isMath : true,
      position : 1
    );

    final exampleParagraphIdAnswer_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_1,
      text : r'x = 2\sqrt{3}',
      isMath : true,
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
      text : 'Solve: ',
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_2,
      text : r'3x + 2\sqrt{5} = 4\sqrt{5} + 7',
      isMath : true,
      position : 2
    );

    final exampleParagraphIdSolution_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_2,
      text : r'''3x + 2\sqrt{5} = 4\sqrt{5} + 7
      
      3x = 4\sqrt{5} + 7 - 2\sqrt{5}
      
      3x = 2\sqrt{5} + 7
      
      x = \frac{7 + 2\sqrt{5}}{3}''',
      isMath : true,
      position : 1
    );

    final exampleParagraphIdAnswer_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_2,
      text : r'x = \frac{7 + 2\sqrt{5}}{3}',
      isMath : true,
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

    final exampleLessonId_3 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'example',
      position : 8
    );

    final exampleParagraphIdQuestion_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_3,
      text : 'Solve: ',
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_3,
      text : r'\frac{3}{\sqrt{2}}x + \frac{2}{\sqrt{8}}x = 5\sqrt{2}',
      isMath : true,
      position : 1
    );

    final exampleParagraphIdSolution_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_3,
      text : r'''\frac{3}{\sqrt{2}}x + \frac{2}{\sqrt{8}}x = 5\sqrt{2}
      
      \frac{3}{\sqrt{2}}x + \frac{2}{2\sqrt{2}}x = 5\sqrt{2}
      
      \frac{3\sqrt{2}}{2}x + \frac{\sqrt{2}}{2}x = 5\sqrt{2}
      
      (\frac{3\sqrt{2}}{2} + \frac{\sqrt{2}}{2})x = 5\sqrt{2}
      
      (\frac{3\sqrt{2} + \sqrt{2}}{2})x = 5\sqrt{2}
      
      (\frac{4\sqrt{2}}{2})x = 5\sqrt{2}
      
      2\sqrt{2}x = 5\sqrt{2}
      
      x = \frac{5\sqrt{2}}{2\sqrt{2}}
      
      x = \frac{5}{2}''',
      isMath : true,
      position : 1
    );

    final exampleParagraphIdAnswer_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_3,
      text : r'x = \frac{5}{2}',
      position : 1
    );

    await BlocksHelper.appendExampleBlock(
      db,
      blockId : exampleLessonId_3,
      title : 'Example 3',
      paragraphQuestion : exampleParagraphIdQuestion_3,
      paragraphSolution : exampleParagraphIdSolution_3,
      paragraphAnswer : exampleParagraphIdAnswer_3
    );

    final exampleLessonId_4 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'example',
      position : 9
    );

    final exampleParagraphIdQuestion_4 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_4,
      text : 'Solve: ',
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_4,
      text : r'\frac{2x - \sqrt{3}}{3} + \frac{x + \sqrt{3}}{2} = 5',
      isMath : true,
      position : 2
    );

    final exampleParagraphIdSolution_4 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_4,
      text : r'''\frac{2x - \sqrt{3}}{3} + \frac{x + \sqrt{3}}{2} = 5
      
      2(2x - \sqrt{3}) + 3(x + \sqrt{3}) = 6 \times 5
      
      4x - 2\sqrt{3} + 3x + 3\sqrt{3} = 30
      
      7x  + \sqrt{3} = 30

      7x = 30 - \sqrt{3}
      
      x = \frac{30 - \sqrt{3}}{7}''',
      isMath : true,
      position : 1
    );

    final exampleParagraphIdAnswer_4 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_4,
      text : r'x = \frac{30 - \sqrt{3}}{7}',
      isMath : true,
      position : 1
    );

    await BlocksHelper.appendExampleBlock(
      db,
      blockId : exampleLessonId_4,
      title : 'Example 4',
      paragraphQuestion : exampleParagraphIdQuestion_4,
      paragraphSolution : exampleParagraphIdSolution_4,
      paragraphAnswer : exampleParagraphIdAnswer_4
    );

    final paragraphLessonId_3 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'paragraph',
      position : 10
    );

    final paragraphId_3 = await ParagraphHelper.appendParagraphBlocks(db)

    await ParagraphHelper.appendParagraphLink(
      db,
      blockId : paragraphLessonId_3,
      paragraphId : paragraphId_3
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : '  We were able to isolate ',
      position : 1
    );
    
    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : r'x',
      isMath : true,
      position : 2
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : ' without squaring both sides but when the unknown is inside a squate root, we cannot simply move the square root to the other side like an ordinary term, that is why we need to learn how to square both side of an equation.',
      position : 3
    );

    final headingLessonId_3 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'heading',
      position : 11
    );

    await BlocksHelper.appendHeadingBlock(
      db,
      blockId : headingLessonId_3,
      heading : 'Squaring Both Sides When Appropriate'
    );

    final paragraphLessonId_4 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'paragraph',
      position : 12
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
      text : '  Squaring both side means raising both side of an equation to the power of ',
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_4,
      text : r'2',
      isMath : true,
      position : 2
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_4,
      text : '. It is commonly used in surd equation to remove squart roots that contain unknown values.\n\n',
      position : 3
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_4,
      text : 'For example:\n',
      style : {
        'color' : 'amber',
        'fontSize' : 16
      },
      position : 4
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_4,
      text : r'\sqrt{x} = 5',
      isMath : true,
      position : 5
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_4,
      text : '\n\nsquare both side\n\n',
      position : 6
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_4,
      text : r'(\sqrt{x})^2 = 5^2',
      isMath : true,
      position : 7
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_4,
      text : '\n\nremove the square root\n\n',
      position : 8
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_4,
      text : r'x = 25',
      isMath : true,
      position : 9
    );

    final paragraphLessonId_5 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'paragraph',
      position : 13
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
      text : '  Some equation involving surds have the unknown value on both sides to remove the square root, we may obtain solution that do not satisfy the original equation. these are called ',
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_5,
      text : 'extenous solutions',
      style : {
        'color' : 'blue',
        'fontSize' : 16
      },
      position : 2
    );

    await ParagraphHelper.appendTextPart()
  }
}