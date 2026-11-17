import 'package:sqflite/sqflite.dart';
import '../../../insert_helpers/sub_topic_helper.dart';
import '../../../insert_helpers/paragraph_helper.dart';
import '../../../insert_helpers/blocks_helper.dart';
import '../../../insert_helpers/quiz_helper.dart';

class SurdsInBracketsSeed {
  static Future<void> seed(
    Database db, {
      required int topicId,
  }) async {
    final subTopicId = await SubTopicHelper.appendSubTopic(
      db,
      topicId : topicId,
      subTitle : 'Surds In Brackets',
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
      heading : 'Surds In Bracket'
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
      text : '  Surds in brackets are mathematical expression containing surds that are enclosed within brackets.',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
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
      paragraphId : paragraphId_1,
      text : r'''a(\sqrt{b} + \sqrt{c})
      
      (\sqrt{x} + y)(\sqrt{a} + b)
      
      (\sqrt{x} + y)(\sqrt{x} - y)''',
      isMath : true,
      isImage : false,
      position : 3
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_1,
      text : '  The brackets tell us that the terms inside them must be treated together when performing multiplication or other operations.',
      isMath : false,
      isImage : false,
      position : 4
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
      text : '  When multiplying expressions containing surds in brackets, we multiply each term in one bracketk by every term in the other bracket.',
      isMath : false,
      isImage : false,
      position : 1
    );

    await BlocksHelper.appendMessageBlock(
      db,
      blockId : messageLessonId_1,
      type : 'note',
      paragraphContext : messageParagraphIdContext_1
    );

    final headingLessonId_2 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'heading',
      position : 4
    );

    await BlocksHelper.appendHeadingBlock(
      db,
      blockId : headingLessonId_2,
      heading : 'Multiplication',
    );

    final paragraphLessonId_2 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'paragraph',
      position : 5
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
      text : '  Multiplication in brackets involving surds means multiply two or more bracketed expression that contain surds.',
      isMath : false,
      isImage : false,
      position : 1
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
      text : 'Expand and simplify: ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_1,
      text : r'(\sqrt{2} + 3)(\sqrt{2} + 4)',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_1,
      text : r'''(\sqrt{2} + 3)(\sqrt{2} + 4)
      
      = \sqrt{2} \times \sqrt{2} + \sqrt{2} \times 4 + 3 \times \sqrt{2} + 3 \times 4
      
      = 2 + 4\sqrt{2} + 3\sqrt{2} + 12
      
      = 14 + 7\sqrt{2}''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_1,
      text : r'14 + 7\sqrt{2}',
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
      text : 'Expand and simplify: ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_2,
      text : r'(2 + \sqrt{3})(4 - \sqrt{3})',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_2,
      text : r'''(2 + \sqrt{3})(4 - \sqrt{3})
      
      = 2 \times 4 - 2 \times \sqrt{3} + \sqrt{3} \times 4 - \sqrt{3} \times \sqrt{3}
      
      = 8 - 2\sqrt{3} + 4\sqrt{3} - 3
      
      = 5 + 2\sqrt{3}''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_2,
      text : r'5 + 2\sqrt{3}',
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
      text : 'Expand and simplify: ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_3,
      text : r'(3\sqrt{3} - 2\sqrt{2})(\sqrt{2} - 2\sqrt{3})',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_3,
      text : r'''(3\sqrt{3} - 2\sqrt{2})(\sqrt{2} - 2\sqrt{3})
      
      = (3\sqrt{3})\sqrt{2} - (3\sqrt{3})(2\sqrt{3}) - (2\sqrt{2})\sqrt{2} + (2\sqrt{2})(2\sqrt{3})
      
      = 3\sqrt{6} - 18 - 4 + 4\sqrt{6}
      
      = 7\sqrt{6} - 22''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_3,
      text : r'7\sqrt{6} - 22',
      isMath : true,
      isImage : false,
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

    final headingLessonId_3 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'heading',
      position : 9 
    );

    await BlocksHelper.appendHeadingBlock(
      db,
      blockId : headingLessonId_3,
      heading : 'Conjugate Of A Binomial Surds'
    );

    final paragraphLessonId_3 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'paragraph',
      position : 10
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
      text : '  A binomial is a algebraic expression that contains exactly two terms joined by either a plus(+) or minus(-) sign.\n\n',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : '  The conjugate of a binomial surd is obtained by changing the sign between its two terms.\n\n',
      isMath : false,
      isImage : false,
      position : 2
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : 'In simple words:\n',
      isMath : false,
      isImage : false,
      style : {
        'color' : 'ember',
        'fontSize' : 16
      },
      position : 3
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : '. ',
      isMath : false,
      isImage : false,
      style : {
        'fontSize' : 50,
        'fontWeight' : 'w900'
      },
      position : 4
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : 'If the binomial has a plus sign(+), change it to minus(-).\n\n',
      isMath : false,
      isImage : false,
      position : 5
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : '. ',
      isMath : false,
      isImage : false,
      style : {
        'fontSize' : 50,
        'fontWeight' : 'w900'
      },
      position : 6
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : 'If the binomial has a minus sign(-), change it to plus(+).\n\n',
      isMath : false,
      isImage : false,
      position : 7
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : 'For example:',
      isMath : false,
      isImage : false,
      style : {
        'color' : 'ember',
        'fontSize' : 16
      },
      position : 8
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : '\noriginal binomial: ',
      isMath : false,
      isImage : false,
      position : 9
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : r'\sqrt{a + b}',
      isMath : true,
      isImage : false,
      position : 10
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : '\nits conjugate: ',
      isMath : false,
      isImage : false,
      position : 11
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : r'\sqrt{a - b}',
      isMath : true,
      isImage : false,
      position : 12
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : '\n\noriginal binomial: ',
      isMath : false,
      isImage : false,
      position : 13
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : r'\sqrt{x - y}',
      isMath : true,
      isImage : false,
      position : 14
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : '\nits conjugate: ',
      isMath : false,
      isImage : false,
      position : 15
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId_3,
      text : r'\sqrt{x + y}',
      isMath : true,
      isImage : false,
      position : 16
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
      text : 'Find the product of a binomial surd and its conjugate of ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_4,
      text : r'(\sqrt{7} + 3)(\sqrt{7} - 3)',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_4 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_4,
      text : r'''(\sqrt{7} + 3)(\sqrt{7} -3)
      
      = (\sqrt{7})^2 - 3^2
      
      = 7 - 9
      
      = -2''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_4 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_4,
      text : r'-2',
      isMath : true,
      isImage : false,
      position : 1
    );

    await BlocksHelper.appendExampleBlock(
      db,
      blockId : exampleLessonId_4,
      title : 'Example 1',
      paragraphQuestion : exampleParagraphIdQuestion_4,
      paragraphSolution : exampleParagraphIdSolution_4,
      paragraphAnswer : exampleParagraphIdAnswer_4
    );

    final exampleLessonId_5 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'example',
      position : 12
    );

    final exampleParagraphIdQuestion_5 = await ParagraphHelper.appendParagraphBlocks(db);

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
      text : r'\frac{3 + \sqrt{5}}{4 - \sqrt{10}}',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_5 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_5,
      text : r'''\frac{3 + \sqrt{5}}{4 - \sqrt{10}}
      
      = \frac{3 + \sqrt{5}}{4 - \sqrt{10}} = \frac{4 + \sqrt{10}}{4 + \sqrt{10}}
      
      = \frac{3 \times 4 + 3 \times \sqrt{10} + \sqrt{5} \times 4 + \sqrt{5} \times \sqrt{10}}{4^2 - \sqrt{10}^2}
      
      = \frac{12 + 3\sqrt{10} + 4\sqrt{5} + \sqrt{50}}{16 - 10}
      
      = \frac{12 + 3\sqrt{10} +  4\sqrt{5} + 5\sqrt{2}}{6}''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_5 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_5,
      text : r'\frac{12 + 3\sqrt{10} + 4\sqrt{5} + 5\sqrt{2}}{6}',
      isMath : true,
      isImage : false,
      position : 1
    );

    await BlocksHelper.appendExampleBlock(
      db,
      blockId : exampleLessonId_5,
      title : 'Example 2',
      paragraphQuestion : exampleParagraphIdQuestion_5,
      paragraphSolution : exampleParagraphIdSolution_5,
      paragraphAnswer : exampleParagraphIdAnswer_5
    );
  }
}