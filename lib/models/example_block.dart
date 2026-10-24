import 'paragraph_block.dart';

class ExampleBlock {
  final int blockId;
  final String title;
  final int paragraphQuestion;
  final int paragraphSolution;
  final int paragraphAnswer;
  ParagraphBlock? question;
  ParagraphBlock? solution;
  ParagraphBlock? answer;

  ExampleBlock({
    required this.blockId,
    required this.title,
    required this.paragraphQuestion,
    required this.paragraphSolution,
    required this.paragraphAnswer,
    this.question,
    this.solution,
    this.answer,
  });

  factory ExampleBlock.fromMap(Map<String, dynamic> map) {
    return ExampleBlock(
      blockId : map['block_id'] as int,
      title : map['title'] as String,
      paragraphQuestion : map['paragraph_question'] as int,
      paragraphSolution : map['paragraph_solution'] as int,
      paragraphAnswer : map['paragraph_answer'] as int,
    );
  }
}