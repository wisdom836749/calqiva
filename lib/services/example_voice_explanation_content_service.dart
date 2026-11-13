import '../models/example_block.dart';
import 'paragraph_to_text_service.dart';
import 'paragraph_image_service.dart';

class ExampleVoiceExplanationContent {
  final String question;
  final String solution;
  final String answer;
  final List<String> questionImage;
  final List<String> solutionImage;
  final List<String> answerImage;

  const ExampleVoiceExplanationContent({
    required this.question,
    required this.solution,
    required this.answer,
    required this.questionImage,
    required this.solutionImage,
    required this.answerImage
  });
}

class ExampleVoiceExplanationContentService {
  static ExampleVoiceExplanationContent prepared(ExampleBlock example) {
    if (
      example.question == null ||
      example.solution == null ||
      example.answer == null
    ) {
      throw StateError('Example not found');
    }

    final question = example.question!;
    final solution = example.solution!;
    final answer = example.answer!;

    return ExampleVoiceExplanationContent(
      question : ParagraphToTextService.convert(question),
      solution : ParagraphToTextService.convert(solution),
      answer : ParagraphToTextService.convert(answer),
      questionImage : ParagraphImageService.convert(question),
      solutionImage : ParagraphImageService.convert(solution),
      answerImage : ParagraphImageService.convert(answer)
    );
  }
}