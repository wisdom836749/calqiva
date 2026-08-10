import 'paragraph_block.dart';

class ExampleBlock {
  final String title;
  final ParagraphBlock question;
  final List<ParagraphBlock> solution;
  final ParagraphBlock answer;

  const ExampleBlock ({
    required this.title,
    required this.question,
    required this.solution,
    required this.answer,
  });
}