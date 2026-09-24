import 'package:sqflite/sqflite.dart';
import '../surds_seed.dart';
import '../../../helpers/sub_topic_helper.dart';
import '../../../helpers/blocks_helper.dart';
import '../../../helpers/paragraph_helper.dart';
import '../../../helpers/quiz_helper.dart';

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

    final messageLessonId_1 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'message',
      position : 3
    );

    final messageParagraphIdContext_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphIdContext_1,
      text : 'When simplifying a surd, first look for a perfect-square factor of the number inside the square root.',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphIdContext_1,
      text : ' An easy way to find one is to divide the given number by smaller numbers, starting from ',
      isMath : false,
      isImage : false,
      position : 2
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphIdContext_1,
      text : r'2,',
      isMath : true,
      isImage : false,
      position : 3
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphIdContext_1,
      text : ' until you find a factor that is a perfect-square.',
      isMath : false,
      isImage : false,
      position : 4
    );

    await BlocksHelper.appendMessageBlock(
      db,
      blockId : messageLessonId_1,
      type : 'tip',
      title : 'Tip',
      paragraphContext : messageParagraphIdContext_1
    );

    final exampleLessonId_1 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'example',
      position : 4
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
      text : r'\sqrt{y^{2}x}.',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_1,
      text : r'''\sqrt{y^{2}x} = \sqrt{y} \times \sqrt{x}
      
      = y\sqrt{x^{2}}''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_1,
      text : r'y\sqrt{x^{2}}',
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
      paragraphAnswer : exampleParagraphIdAnswer_1,
    );

    final exampleLessonId_2 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'example',
      position : 5
    );

    final exampleParagraphIdQuestion_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_2,
      text : 'Simplify: ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_2,
      text : r'\sqrt{12}.',
      isMath : true,
      isImage : false,
      position : 2
    );

    final exampleParagraphIdSolution_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_2,
      text : r'''12 = 4 \times 3
      
      \therefore \sqrt{12} = \sqrt{4 \times 3}
      
      = \sqrt{4} \times \sqrt{3}
      
      = 2\sqrt{3}''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final exampleParagraphIdAnswer_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_2,
      text : r'2\sqrt',
      isImage : true,
      isMath : false,
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
      position : 6
    );

    final exampleParagraphIdQuestion_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_3,
      text : 'Express ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_3,
      text : r'4\sqrt{6}',
      isMath : true,
      isImage : false,
      position : 2
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdQuestion_3,
      text : ' as the square root of a single number',
      isMath : false,
      isImage : false,
      position : 3
    );

    final exampleParagraphIdSolution_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdSolution_3,
      text : r'''4\sqrt{6} = \sqrt{16} \times \sqrt{6}
      
      = \sqrt{16 \times 6}
      
      = \sqrt{96}''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final  exampleParagraphIdAnswer_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : exampleParagraphIdAnswer_3,
      text : r'\sqrt{96}',
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

    final messageLessonId_2 = await BlocksHelper.appendLesson(
      db,
      subTopicId : subTopicId,
      blockType : 'summary',
      position:7
    );

    final messageParagraphIdContext_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphIdContext_2,
      text : 'Surds are irrational numbers written is root form, such as ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphIdContext_2,
      text : r'\sqrt{2}, \sqrt{3}, \sqrt{5},',
      isMath : true,
      isImage : false,
      position : 2
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : messageParagraphIdContext_2,
      text : ' e.t.c They cannot be expressed exactly as fractions and can often be simplified using perfect-square factors.',
      isMath : false,
      isImage : false,
      position : 3
    );

    await BlocksHelper.appendMessageBlock(
      db,
      blockId : messageLessonId_2,
      type : 'summary',
      title : 'Summary',
      paragraphContext : messageParagraphIdContext_2
    );

    final quizParagraphIdQuestion_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdQuestion_1,
      text : 'Simplify :',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdQuestion_1,
      text : r'\sqrt{56}',
      isMath : true,
      isImage : false,
      position : 1
    );

    final quizParagraphIdOption0_1 = await ParagraphHelper.appendParagraphBlocks(db);
    
    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdOption0_1,
      text : r'6\sqrt{3}',
      isMath : true,
      isImage : false,
      position : 1
    );

    final quizParagraphIdOption1_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdOption1_1,
      text : r'9\sqrt{6}',
      isMath : true,
      isImage : false,
      position : 1
    );

    final quizParagraphIdOption2_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdOption2_1,
      text : r'3\sqrt{6}',
      isMath : true,
      isImage : false,
      position : 1
    );

    final quizParagraphIdOption3_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdOption3_1,
      text : r'6\sqrt{9}',
      isMath : true,
      isImage : false,
      position : 1
    );

    final quizParagraphIdSolution_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdSolution_1,
      text : r'''54 = 9 \times 6
      
      \therefore \sqrt{54} = \sqrt{9 \times 6}
      
      = \sqrt{9} \times \sqrt{6}
      
      =3\sqrt{6}''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final quizParagraphIdCorrectAnswer_1 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdCorrectAnswer_1,
      text : r'3\sqrt{6}',
      isMath : true,
      isImage : false,
      position : 1
    );

    await QuizHelper.appendQuiz(
      db,
      subTopicId : subTopicId,
      question : quizParagraphIdQuestion_1,
      option0 : quizParagraphIdOption0_1,
      option1 : quizParagraphIdOption1_1,
      option2 : quizParagraphIdOption2_1,
      option3 : quizParagraphIdOption3_1,
      solution : quizParagraphIdSolution_1,
      correctAnswer : quizParagraphIdCorrectAnswer_1
    );

    final quizParagraphIdQuestion_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdQuestion_2,
      text : 'Simplify: ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdQuestion_2,
      text : r'\sqrt{200}',
      isMath : true,
      isImage : false,
      position : 2
    );

    final quizParagraphIdOption0_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdOption0_2,
      text : r'5\sqrt{4}',
      isMath : true,
      isImage : false,
      position : 1
    );

    final quizParagraphIdOption1_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdOption1_2,
      text : r'10\sqrt{2}',
      isMath : true,
      isImage : false,
      position : 1
    );

    final quizParagraphIdOption2_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdOption2_2,
      text : r'2\sqrt{25}',
      isMath : true,
      isImage : false,
      position : 1
    );

    final quizParagraphIdOption3_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdOption3_2,
      text : r'20\sqrt{5}',
      isMath : true,
      isImage : false,
      position : 1
    );

    final quizParagraphIdSolution_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart (
      db,
      paragraphId : quizParagraphIdSolution_2,
      text : r'''200 = 100 \times 2
      
      \therefore \sqrt{200} = \sqrt{100 \times 2}
      
      = \sqrt{100} \times \sqrt{2}
      
      = 10\sqrt{2}''',
      isMath : true,
      isImage : false,
      position : 1
    );

    final quizParagraphIdCorrectAnswer_2 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdCorrectAnswer_2,
      text : r'10\sqrt{2}',
      isMath : true,
      isImage : false,
      position : 1
    );

    await QuizHelper.appendQuiz(
      db,
      subTopicId : subTopicId,
      question : quizParagraphIdQuestion_2,
      option0 : quizParagraphIdOption0_2,
      option1 : quizParagraphIdOption1_2,
      option2 : quizParagraphIdOption2_2,
      option3 : quizParagraphIdOption3_2,
      solution : quizParagraphIdSolution_2,
      correctAnswer : quizParagraphIdCorrectAnswer_2
    );

    final quizParagraphIdQuestion_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdQuestion_3,
      text : 'Simplify: ',
      isMath : false,
      isImage : false,
      position : 1
    );

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdQuestion_3,
      text : r'\sqrt{48}',
      isMath : true,
      isImage : false,
      position : 2
    );

    final quizParagraphIdOption0_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdOption0_3,
      text : r'4\sqrt{3}',
      isMath : true,
      isImage : false,
      position : 1 
    );

    final quizParagraphIdOption1_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdOption1_3,
      text : r'2\sqrt{12}',
      isMath : true,
      isImage : false,
      position : 1
    );

    final quizParagraphIdOption2_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdOption2_3,
      text : r'3\sqrt{12}',
      isMath : true,
      isImage : false,
      position : 1
    );

    final quizParagraphIdOption3_3 = await ParagraphHelper.appendParagraphBlocks(db);

    await ParagraphHelper.appendTextPart(
      db,
      paragraphId : quizParagraphIdOption3_3,
      text : r'2\sqrt{16}',
      isMath : true,
      isImage : false,
      position : 1
    );

    final quizParagraphIdSolution_3 = await ParagraphHelper.appendParagraphBlocks(db);
  }
}