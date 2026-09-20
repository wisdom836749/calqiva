import 'package:sqflite/sqflite.dart';
import '../surds_seed.dart';
import '../../../helpers/sub_topic_helper.dart';
import '../../../helpers/blocks_helper.dart';
import '../../../helpers/paragraph_helper.dart';

class IntroductionOfSurdsSeed {
  static Future<void> seed(
    Database db,
    int topicId,
  ) async {
    final subTopicId  = await SubTopicHelper.appendSubTopic(
      db,
      topicId : topicId,
      subTitle : 'Introduction Of Surds',
    );

    final headingLessonId = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'heading',
      position : 1
    );

    await BlocksHelper.appendHeadingBlock(
      db,
      blockId : headingLessonId,
      heading: 'Meaning Of Surds',
    );

    final paragraphLessonId = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'paragraph',
      position : 2
    );

    final paragraphId = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendParagraphLink(
      db,
      blockId : paragraphLessonId,
      paragraphId : paragraphId,
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' A surds is a mathematical expression that contain a root, such as a square root, cute root, or another types of root, which cannot be simplified to give a rational number (i.e fractional number).\n',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' In simple words, a surd is a root that give  an irrational number.\n\n',
      isMath : false,
      isImage : false,
      position : 2
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' Surds are useful because they allow us to write exact mathematic values.',
      isMath : false,
      isImage : false,
      position : 3
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' For example, suppose the diagonal of a square has an exact length of ',
      isMath : false,
      isImage : false,
      position : 4
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'\sqrt{2cm}',
      isMath : true,
      isImage : false,
      position : 5
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' if we use a decimal, we might write ',
      isMath : false,
      isImage : false,
      position : 6
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'1.414cm',
      isMath : true,
      isImage : false,
      position : 7
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' which is an approximation.',
      isMath : false,
      isImage : false,
      position : 8
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' The value ',
      isMath : false,
      isImage : false,
      position : 9
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'\sqrt{2cm}',
      isMath : true,
      isImage : false,
      position : 10
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' is exact, therefore surds are especially useful in mathematics when we want to keep answers exact instead of rounded.\n\n',
      isMath : false,
      isImage : false,
      position : 11
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' To recognize surds easily, you should know some perfect squares.',
      isMath : false,
      isImage : false,
      style : {
        'color' : 'blue',
        'fontSize' : 16,
      },
      position : 12,
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' A perfect squares is a number obtained by multiplying a whole number by itself.\n\n',
      isMath : false,
      isImage : false,
      position : 13,
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : 'For example:\n\n',
      isMath : false,
      isImage : false,
      position : 14,
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'1 \times 1 = 1',
      isMath : true,
      isImage : false,
      position : 15
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : '\nso ',
      isMath : false,
      isImage : false,
      position : 16
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'1',
      isMath : true,
      isImage : false,
      position : 17
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' is a perfect square.\n\n',
      isMath : false,
      isImage : false,
      position : 18
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'2 \times 2 = 4',
      isMath : true,
      isImage : false,
      position : 19
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : '\nso ',
      isMath : false,
      isImage : false,
      position : 20
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'4',
      isMath : true,
      isImage : false,
      position : 21
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' is a perfect square.\n\n',
      isMath : false,
      isImage : false,
      position : 22
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'3 \times 3 = 9',
      isMath : true,
      isImage : false,
      position : 23
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : '\nso ',
      isMath : false,
      isImage : false,
      position : 24
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'9',
      isMath : true,
      isImage : false,
      position : 25
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' is a perfect square.\n\n',
      isMath : false,
      isImage : false,
      position : 26
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : 'Some important perfect square are:\n',
      isMath : false,
      isImage : false,
      position : 27
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'''1^{2} = 1
      2^{2} = 4
      3^{2} = 9
      4^{2} = 16
      5^{2} = 25''',
      isMath  : true,
      isImage : false,
      position : 28
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : '\n\nnumber such as\n:',
      isMath : false,
      isImage : false,
      position : 29
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'2, 3, 5, 6, 7, 10, 11',
      isMath: true,
      isImage : false,
      position : 30
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : 'are not perfect squares. Therefore, their square roots generally give irrational numbers. For example:\n',
      isMath : false,
      isImage : false,
      position : 31
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'\sqrt{2}',
      isMath : true,
      isImage : false,
      position : 32
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' cannot be simplifield to a whole number.\n',
      isMath : false,
      isImage : false,
      position : 33
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : 'Similarly:\n',
      isMath : false,
      isImage : false,
      style : {
        'color' : 'amber',
        'fontSize' : 16,
      },
      position : 34
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'\sqrt{3}',
      isMath : true,
      isImage : false,
      position : 35
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' cannot be simpligield to a whole number.\n',
      isMath : false,
      isImage : false,
      position : 36
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : 'Therefore: ',
      isMath : false,
      isImage : false,
      position : 37
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'\sqrt{2}, \sqrt{3}, \sqrt{5}, \sqrt{6}',
      isMath : true,
      isImage : false,
      position : 38
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' are surds.\n',
      isMath : false,
      isImage : false,
      position : 39
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' Another important point is that a surd does not always have to remain exactly as it first appears, i.e a surd can sometimes be simplifield into a simpler form without changing its exact value,\n',
      isMath : false,
      isImage : false,
      position : 40
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : 'consider:',
      isMath : false,
      isImage : false,
      style : {
        'color' : 'amber',
        'fontSize' : 16,
      },
      position : 41
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'\sqrt{8}',
      isMath : true,
      isImage : false,
      position : 42
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' at first, it looks like a surd, but ',
      isMath : false,
      isImage : false,
      position : 43
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'8',
      isMath : true,
      isImage : false,
      position : 44
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' can be separated into:\n',
      isMath : false,
      isImage : false,
      position : 45
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'''8 = 4 \times 2
      
      \therefore \sqrt{8} = \sqrt{4 \times 2}''',
      isMath : true,
      isImage : false,
      position : 46
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : '\nusing the product rule of surds\n',
      isMath : false,
      isImage : false,
      position : 47
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'\sqrt{ab} = \sqrt{a} \times \sqrt{b}',
      isMath : true,
      isImage : false,
      position : 48
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : '\nwe get:\n',
      isMath : false,
      isImage : false,
      position : 49
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'\sqrt{8} = \sqrt{4} \times \sqrt{2}',
      isMath : true,
      isImage : false,
      position : 50
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : '\nsince\n',
      isMath : false,
      isImage : false,
      position : 51
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId: paragraphId,
      text : r'\sqrt{4} = 2',
      isMath : true,
      isImage : false,
      position : 52
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : '\nwe have:\n',
      isMath : false,
      isImage : false,
      position : 53
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'\sqrt{8} = 2\sqrt{2}',
      isMath : true,
      isImage : false,
      position : 54
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : '\nso ',
      isMath : false,
      isImage : false,
      position : 55
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'\sqrt{8}',
      isMath : true,
      isImage : false,
      position : 56
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : ' is a surd, but it can be simplified to ',
      isMath : false,
      isImage : false,
      position : 57
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : paragraphId,
      text : r'2\sqrt{2}.',
      isMath : true,
      isImage : false,
      position : 58
    );

    final messageLessonId = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'message',
      position : 3
    );

    final messageParagraphId = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphId,
      text : 'When simplifying a surd, first look for a perfect-square factor of the number inside the square root.',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphId,
      text : ' An easy way to find one is to divide the given number by smaller numbers, starting from ',
      isMath : false,
      isImage : false,
      position : 2
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphId,
      text : r'2,',
      isMath : true,
      isImage : false,
      position : 3
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphId,
      text : ' until you find a factor that is a perfect-square.',
      isMath : false,
      isImage : false,
      position : 4
    );

    await BlocksHelper.appendMessageBlock(
      db,
      blockId : messageLessonId,
      type : 'tip',
      title : 'Tip',
      paragraphContext : messageParagraphId
    );
  }
}